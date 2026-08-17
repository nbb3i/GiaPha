# Hướng dẫn triển khai lên VPS Ubuntu

Triển khai website gia phả Nguyễn Bá bằng **Docker Compose**. Toàn bộ ứng dụng
(Next.js) và cơ sở dữ liệu (PostgreSQL) chạy trong container, phía trước đặt
**Nginx** làm reverse proxy và **Let's Encrypt** cấp SSL miễn phí.

> Giả định: VPS chạy Ubuntu, bạn đăng nhập bằng user có quyền `sudo`.

---

## Tổng quan luồng

```
Người dùng → (HTTPS) → Nginx (cổng 80/443) → App Next.js (cổng 3000) → PostgreSQL
```

---

## 1. Cài Docker (bỏ qua nếu đã có)

```bash
curl -fsSL https://get.docker.com | sudo sh
sudo usermod -aG docker $USER
# Đăng xuất & đăng nhập lại để áp dụng quyền, rồi kiểm tra:
docker version && docker compose version
```

## 2. Lấy mã nguồn về VPS

```bash
cd ~
git clone https://github.com/nbb3i/GiaPha.git giapha
cd giapha
git checkout claude/family-genealogy-website-jujnl0
```

## 3. Triển khai bằng 1 lệnh

```bash
chmod +x deploy.sh

# Nếu ĐÃ có domain, truyền vào để NextAuth hoạt động đúng:
SITE_URL=https://giapha.abc.vn ./deploy.sh

# Nếu CHƯA có domain (chạy tạm qua IP):
./deploy.sh
```

Script sẽ tự động:
1. Tạo file `.env` (sinh `NEXTAUTH_SECRET` và mật khẩu admin ngẫu nhiên).
2. Build image và khởi động `app` + `db`.
3. Đồng bộ schema qua service `migrate` (`docker compose run --rm migrate npx prisma db push`).
4. Nạp dữ liệu mẫu (seed).

> Ghi chú kỹ thuật: image `app` là bản `standalone` tối giản (không có Prisma
> CLI). Vì vậy các tác vụ schema/seed chạy trong service riêng **`migrate`**
> (profile `tools`, không tự khởi động khi `up`).

> ⚠️ **Ghi lại mật khẩu admin** mà script in ra. Sau này deploy lại mà **không**
> muốn ghi đè dữ liệu, chạy: `SEED=0 ./deploy.sh`.

Kiểm tra:

```bash
docker compose ps          # cả 2 container ở trạng thái Up
curl -I http://localhost:3000
```

Mở tạm cổng để test qua IP (nếu dùng UFW):

```bash
sudo ufw allow 3000/tcp    # chỉ để test; sau khi có Nginx thì đóng lại
```

Truy cập `http://<IP-VPS>:3000` — thấy trang chủ là thành công.

---

## 4. Đặt Nginx reverse proxy (khi có domain)

Trước tiên trỏ **DNS bản ghi A** của domain (vd `giapha.abc.vn`) về **IP VPS**.

```bash
sudo apt update && sudo apt install -y nginx
sudo cp deploy/nginx.conf.example /etc/nginx/sites-available/giapha
sudo nano /etc/nginx/sites-available/giapha     # sửa server_name = domain thật
sudo ln -s /etc/nginx/sites-available/giapha /etc/nginx/sites-enabled/
sudo rm -f /etc/nginx/sites-enabled/default
sudo nginx -t && sudo systemctl reload nginx
```

Mở tường lửa cho web, đóng cổng 3000 (không lộ trực tiếp):

```bash
sudo ufw allow 'Nginx Full'
sudo ufw delete allow 3000/tcp
```

Giờ `http://giapha.abc.vn` đã vào được qua Nginx.

## 5. Bật HTTPS (Let's Encrypt)

```bash
sudo apt install -y certbot python3-certbot-nginx
sudo certbot --nginx -d giapha.abc.vn
```

Certbot tự cấu hình SSL và chuyển hướng HTTP→HTTPS. Chứng chỉ tự gia hạn.

Sau khi có HTTPS, **sửa `.env`** cho khớp và khởi động lại app:

```bash
nano .env      # NEXTAUTH_URL="https://giapha.abc.vn"
docker compose up -d
```

---

## 6. Vận hành

| Việc | Lệnh |
|---|---|
| Xem log app | `docker compose logs -f app` |
| Khởi động lại | `docker compose restart app` |
| Cập nhật mã mới | `git pull && SEED=0 ./deploy.sh` |
| Đồng bộ schema thủ công | `docker compose run --rm migrate npx prisma db push` |
| Seed lại dữ liệu mẫu | `docker compose run --rm migrate npm run db:seed` |
| Sao lưu database | `docker compose exec -T db pg_dump -U giapha giapha > backup_$(date +%F).sql` |
| Phục hồi database | `cat backup.sql \| docker compose exec -T db psql -U giapha giapha` |
| Đổi mật khẩu DB | Sửa `docker-compose.yml` + `.env` rồi `docker compose up -d` |

## 7. Nhập dữ liệu gia phả thật

Khi có dữ liệu thật (thay cho dữ liệu mẫu):

```bash
# Cách 1: nạp file SQL (theo mẫu prisma/import-mau.sql)
cat prisma/import-mau.sql | docker compose exec -T db psql -U giapha giapha

# Cách 2: xoá dữ liệu mẫu trước rồi nạp
docker compose exec -T db psql -U giapha giapha -c 'DELETE FROM "Person";'
```

Chi tiết quy tắc nhập (thứ tự đời, kiểm tra toàn vẹn): xem `prisma/import-mau.sql`.

---

## 8. Xử lý sự cố nhanh

| Triệu chứng | Cách xử lý |
|---|---|
| Trang báo "Chưa kết nối được CSDL" | `docker compose logs db`; kiểm tra `DATABASE_URL` trong `.env` |
| Đăng nhập admin bị lỗi/redirect vòng | `NEXTAUTH_URL` phải khớp đúng URL đang truy cập; sửa `.env` rồi `docker compose up -d` |
| Build thất bại do hết RAM | VPS < 1GB RAM: thêm swap 2GB, hoặc build image ở máy khác rồi push |
| Cổng 3000 bị chiếm | Đổi ánh xạ cổng trong `docker-compose.yml` (vd `3001:3000`) |

Khi gặp lỗi, **dán output** của `docker compose logs app` để được hỗ trợ chính xác.

---

## 9. Tiếng Việt & mã hoá UTF-8

Website lưu tiếng Việt có dấu, nên cơ sở dữ liệu phải dùng **UTF-8**.
`docker-compose.yml` đã cấu hình sẵn (`--encoding=UTF8`, image `postgres:16`).
Cấu hình này **chỉ áp dụng khi khởi tạo DB lần đầu** (volume rỗng).

### Kiểm tra mã hoá DB hiện tại
```bash
docker compose exec -T db psql -U giapha -d giapha -c "SHOW SERVER_ENCODING;"
```
- Trả về **`UTF8`** → tốt, không cần làm gì thêm.
- Trả về `SQL_ASCII` → nên chuyển sang UTF-8 theo một trong hai cách dưới.

### Cách A — Tạo lại DB mới (nếu CHƯA nhập liệu thủ công đáng kể)
> Xoá sạch DB rồi nạp lại 514 thành viên từ dữ liệu gốc.
```bash
docker compose down
docker volume rm giapha_pgdata     # tên volume: <thư-mục>_pgdata
git pull && ./deploy.sh            # tạo DB UTF8 + nạp lại dữ liệu
```

### Cách B — Giữ nguyên dữ liệu đã có (sao lưu → tạo lại → phục hồi)
```bash
# 1) Sao lưu dữ liệu hiện tại
docker compose exec -T db pg_dump -U giapha giapha > backup.sql
# 2) Xoá volume cũ, tạo DB mới UTF8 (rỗng)
docker compose down
docker volume rm giapha_pgdata
docker compose up -d db
sleep 8
# 3) Phục hồi dữ liệu
cat backup.sql | docker compose exec -T db psql -U giapha giapha
# 4) Bật lại toàn bộ
docker compose up -d
```

> **Lưu ý:** SQL_ASCII vẫn lưu đúng byte UTF-8 nên tên có dấu thường vẫn hiển thị
> bình thường. Việc chuyển UTF8 là để chuẩn hoá (đúng `ILIKE`, `length()`, sắp
> xếp, kiểm tra hợp lệ). Không gấp nếu tên đang hiển thị đúng.

### Tìm kiếm không dấu
Trang **Gia phả** hỗ trợ tìm không phân biệt dấu: gõ `nguyen ba binh` vẫn ra
"Nguyễn Bá Bình" (xử lý ở tầng ứng dụng qua hàm `boDau`, không phụ thuộc DB).

### (Tuỳ chọn) Sắp xếp tên theo đúng tiếng Việt
Danh sách hiện sắp theo **đời** và **thứ tự** (số) nên không cần collation đặc
biệt. Nếu sau này cần sắp danh sách **theo vần tiếng Việt**, dùng ICU collation
của PostgreSQL 16: `ORDER BY "hoTen" COLLATE "vi-x-icu"`.
