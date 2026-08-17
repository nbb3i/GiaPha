# Gia phả dòng họ Nguyễn Bá

Website quản lý gia phả dòng họ **Nguyễn Bá** — xã Đại Lai, TP. Bắc Ninh.
Con cháu xem gia phả công khai; quản trị viên đăng nhập để thêm/sửa/xoá dữ liệu.

> Tài liệu thiết kế chi tiết: [`docs/THIET-KE.md`](docs/THIET-KE.md)

## Công nghệ

- **Next.js 14** (App Router) + **React 18** + **TailwindCSS**
- **PostgreSQL** + **Prisma ORM**
- **NextAuth** (phân quyền 3 cấp: Khách / Biên tập / Admin)
- Triển khai bằng **Docker Compose** trên **VPS Ubuntu**

## Tính năng

| Công khai | Quản trị (phân quyền 3 cấp) |
|---|---|
| Trang chủ + thống kê | Đăng nhập, đăng xuất |
| Danh sách theo đời + tìm kiếm | Bảng điều khiển |
| Chi tiết thành viên (cha/mẹ/vợ-chồng/con) | **Thêm/sửa/xoá thành viên** (chọn cha/mẹ, đời) |
| **Sơ đồ cây tương tác** (zoom/pan) | **Thêm/sửa/xoá tin tức** (nháp/hiển thị) |
| Lịch giỗ | **Quản lý tài khoản** (tạo, đổi vai trò, đặt mật khẩu — Admin) |
| Tin tức & sự kiện | Xoá dữ liệu chỉ dành cho Admin |

**Dữ liệu thật:** 514 thành viên, 9 đời (dòng họ Nguyễn Bá — Trung Thành, Đại Lai).

## Chạy ở máy phát triển

```bash
# 1. Cài phụ thuộc
npm install

# 2. Tạo file .env từ mẫu và điền thông tin
cp .env.example .env

# 3. Khởi động PostgreSQL (dùng Docker cho nhanh)
docker compose up -d db

# 4. Tạo bảng + nạp dữ liệu mẫu
npm run db:push
npm run db:seed

# 5. Chạy
npm run dev
# → http://localhost:3000
```

**Tài khoản mẫu sau khi seed:**
- Admin: `admin` / `Admin@12345`
- Biên tập: `bientap` / `Bientap@123`

## Triển khai lên VPS Ubuntu (Docker)

```bash
# Trên VPS đã cài Docker + Docker Compose
git clone <repo> giapha && cd giapha

# Tạo .env production (đặt NEXTAUTH_SECRET ngẫu nhiên, NEXTAUTH_URL = domain thật)
cp .env.example .env && nano .env

# Build & chạy app + database
docker compose up -d --build

# Tạo bảng + seed (chạy 1 lần)
docker compose exec app npx prisma db push
docker compose exec app npm run db:seed
```

Đặt **Nginx** phía trước làm reverse proxy (trỏ `:3000`) và cấp SSL bằng
Let's Encrypt. Xem thêm mục 6 trong tài liệu thiết kế.

## Nhập dữ liệu thật (SQL)

Khi có dữ liệu gia phả thật, dùng mẫu [`prisma/import-mau.sql`](prisma/import-mau.sql):

```bash
psql "$DATABASE_URL" -f prisma/import-mau.sql
```

Import theo thứ tự đời để khoá ngoại `parentId` luôn hợp lệ (chi tiết trong file).

## Cấu trúc thư mục

```
src/
  app/            # Các trang (App Router)
    page.tsx           # Trang chủ
    gia-pha/           # Danh sách theo đời + chi tiết
    cay/               # Sơ đồ cây
    lich-gio/          # Lịch giỗ
    tin-tuc/           # Tin tức
    admin/             # Khu vực quản trị
    api/auth/          # NextAuth
  components/     # Header, Footer, thẻ thành viên...
  lib/            # prisma, auth, tiện ích gia phả
prisma/
  schema.prisma   # Mô hình dữ liệu
  seed.ts         # Dữ liệu mẫu
  import-mau.sql  # Mẫu import dữ liệu thật
```
