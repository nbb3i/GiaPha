# Tài liệu thiết kế — Website Quản lý Gia phả Dòng họ

> Bản thảo brainstorm · Cập nhật: 2026-08-17

## 0. Thông tin dòng họ (đã chốt)

| Mục | Giá trị |
|---|---|
| **Tên dòng họ** | Nguyễn Bá — Trung Thành, Đại Lai, Gia Bình |
| **Quê quán** | Xã Đại Lai, Thành phố Bắc Ninh |
| **Số đời hiện tại** | Đời thứ 9 |
| **Số thành viên (dữ liệu thật)** | **514 người** (296 nam, 218 nữ) |
| **Ngôn ngữ** | Thuần tiếng Việt (không đa ngôn ngữ) |
| **Nhập liệu ban đầu** | ✅ Đã trích xuất từ bản xuất NukeViet → `prisma/data-nguyen-ba.json` |
| **Tin tức/sự kiện** | **Có** — trang tin tức, giỗ Tổ, họp họ |
| **Triển khai** | **VPS chạy Ubuntu** |

---

## 1. Mục tiêu

Xây dựng website giúp:

1. **Con cháu trong dòng họ** xem được thông tin gia phả (công khai, thân thiện điện thoại).
2. **Người quản lý** đăng nhập, phân quyền, thêm/sửa/xóa dữ liệu thành viên.

Tham khảo:
- Frontend mẫu: `https://nguyenba.id.vn/gia-pha/Nguyen-Ba/...`
- Backend mẫu: module `gia-pha` trên nền NukeViet/PHP.

Định hướng: giữ ưu điểm của bản mẫu (danh sách theo đời, dễ đọc) nhưng **nâng cấp** phần cây gia phả thành sơ đồ tương tác và giao diện hiện đại.

---

## 2. Công nghệ đề xuất

| Thành phần | Lựa chọn | Lý do |
|---|---|---|
| Frontend | **Next.js (React) + TailwindCSS** | Cây tương tác (zoom/pan/click), SEO tốt, responsive |
| Backend/API | **Next.js API Routes** (có thể tách NestJS sau) | Một codebase, dễ bảo trì |
| Database | **PostgreSQL** | Quan hệ cha–con, hôn nhân nhiều đời rất hợp mô hình quan hệ |
| ORM | **Prisma** | Type-safe, migration rõ ràng |
| Xác thực | **NextAuth (Auth.js)** | Đăng nhập + phiên + vai trò |
| Lưu ảnh | File trên đĩa VPS + đường dẫn trong DB | Avatar, ảnh mộ, tư liệu scan |
| Triển khai | **VPS Ubuntu** — Docker Compose (app + PostgreSQL) sau Nginx reverse proxy | Chủ động, đặt tại VN |

Toàn bộ đều **mã nguồn mở, miễn phí**.

---

## 3. Mô hình dữ liệu

> **Cập nhật (2026-08-17):** Mô hình đã được **điều chỉnh theo dữ liệu thật**
> trích xuất từ bản xuất NukeViet (`docs/bytec612_smartaudio-2.sql`) — **514
> thành viên, 9 đời**. Các thay đổi chính so với thiết kế ban đầu:
> 1. Lưu **cả cha (`parentId`) và mẹ (`motherId`)**, không chỉ cha.
> 2. **Vợ/chồng là một bản ghi `Person`** (`quanHe = VO_CHONG`), không dùng bảng
>    `Marriage` riêng — đúng cách NukeViet tổ chức.
> 3. **Ngày sinh/mất/giỗ là chuỗi tự do** (âm lịch, khuyết, định dạng lẫn lộn) —
>    **không** ép kiểu `DATE`.
> 4. Nhiều **loại tên**: tên húy, tên tự, tên thụy, mã hiệu, chức vụ/phẩm hàm.
> 5. `tinhTrang` = tình trạng **sống/mất** (khác với nháp/hiển thị).

### 3.1 Bảng `Person` — ánh xạ từ NukeViet

| Trường (mới) | Kiểu | Trường gốc NukeViet | Ghi chú |
|---|---|---|---|
| `id` | int (giữ id gốc) | `id` | Để ánh xạ cha/mẹ khi nhập liệu |
| `gid` | int | `gid` | Thuộc dòng họ (genealogy) nào |
| `parentId` | int? → Person | `parentid` | Cha (hoặc người phối ngẫu nếu `quanHe=VO_CHONG`) |
| `motherId` | int? → Person | `parentid2` | Mẹ |
| `thuTu` | int | `weight` | Con/vợ thứ mấy |
| `doi` | int | `lev` | Đời thứ (1 = Thủy Tổ) |
| `quanHe` | enum | `relationships` | `CON`(1) / `VO_CHONG`(2) / `KHAC`(3) |
| `gioiTinh` | enum | `gender` | `NAM`(1) / `NU`(2) / `KHONG_RO`(0) |
| `tinhTrang` | enum | `status` | `SONG`(1) / `MAT`(2) / `KHONG_RO`(0) |
| `hoTen` | text | `full_name` | Tên húy (khai sinh / cúng cơm) |
| `maHieu` | text? | `code` | Số mã hiệu trong gia phả |
| `tenTu` | text? | `name1` | Tên tự |
| `tenThuy` | text? | `name2` | Tên thụy / truy phong sau khi mất |
| `tenKhac1/2` | text? | `name3`,`name4` | Tên khác |
| `chucVu` | text? | `regency` | Chức vụ, phẩm hàm |
| `alias` | text? | `alias` | |
| `ngaySinh` | text? | `birthday` | Chuỗi tự do (âm/dương, có thể khuyết) |
| `ngayMat` | text? | `dieday` | Chuỗi tự do |
| `ngayGio` | text? | `anniversary` | Vd `"24/2"` |
| `hienNgayGio` | bool | `actanniversary` | Có hiển thị ngày giỗ |
| `huongTho` | int? | `life` | |
| `moTang` | text? | `burial` | Nơi an táng |
| `noiDung` | text? | `content` | Sự nghiệp, công đức, ghi chú |
| `anh` | text? | `image` | Ảnh chân dung |
| `hienThi` | bool | — | Ẩn/hiện công khai |
| `createdAt`/`updatedAt` | timestamp | `add_time`/`edit_time` | |

> **Cây gia phả**: con cháu (`quanHe=CON`) nối cha qua `parentId`, mẹ qua
> `motherId`. Vợ/chồng (`quanHe=VO_CHONG`) nối người phối ngẫu qua `parentId`.
> Truy vấn con của X = `parentId=X (hoặc motherId=X) AND quanHe=CON`.

### 3.2 Bảng `Genealogy` (Dòng họ / phả hệ)

Từ bảng gốc `giapha_vi_gia_pha_genealogy`.

| Trường | Trường gốc | Ghi chú |
|---|---|---|
| `id` | `gid` | |
| `tieuDe` | `title` | "Nguyễn Bá - Trung Thành, Đại Lai, Gia Bình" |
| `tocUoc` | `rule` | Tộc ước / gia quy |
| `noiDung`, `moTa` | `content`,`description` | |
| `soThanhVien` | `number` | 514 |
| `nam` | `years` | 2025 |
| `tacGia`, `nguoiLienHe`, `dienThoai`, `email` | `author`,`full_name`,`telephone`,`email` | Thông tin liên hệ |
| `hienThiVo` | `show_wife` | |

> **Đã lược bỏ** bảng `Marriage` và `Media` của thiết kế cũ (vợ/chồng nay là
> `Person`; ảnh chân dung nằm ở `Person.anh`). Bảng `Location` (quê quán, từ
> `giapha_vi_gia_pha_location`) sẽ bổ sung khi cần phân nhánh theo địa danh.

### 3.4 Bảng `User` (Tài khoản)

| Trường | Kiểu | Ghi chú |
|---|---|---|
| `id` | UUID | |
| `email`/`username` | text unique | |
| `passwordHash` | text | |
| `vaiTro` | enum(**KHACH** / **BIENTAP** / **ADMIN**) | Phân quyền |
| `hoTen` | text? | |

### 3.5 Bảng `TinTuc` (Tin tức / Sự kiện dòng họ)

| Trường | Kiểu | Ghi chú |
|---|---|---|
| `id` | UUID | |
| `tieuDe` | text | |
| `slug` | text unique | Đường dẫn thân thiện |
| `noiDung` | text (dài) | Nội dung bài viết |
| `anhBia` | text? | Ảnh đại diện |
| `loai` | enum | tin-tuc / gio-to / hop-ho / thong-bao |
| `ngayDienRa` | date? | Ngày diễn ra sự kiện (giỗ Tổ, họp họ) |
| `tacGiaId` | FK → User | Người đăng |
| `trangThai` | enum(hiển thị/nháp) | |
| `createdAt` | timestamp | |

---

## 4. Phân quyền (3 cấp)

| Hành động | Khách | Biên tập | Admin |
|---|:--:|:--:|:--:|
| Xem gia phả công khai | ✅ | ✅ | ✅ |
| Thêm / sửa thành viên | ❌ | ✅ | ✅ |
| Upload ảnh, tư liệu | ❌ | ✅ | ✅ |
| Xóa thành viên | ❌ | ❌ | ✅ |
| Quản lý tài khoản, phân quyền | ❌ | ❌ | ✅ |
| Duyệt nội dung (nháp → hiển thị) | ❌ | ❌ | ✅ |

*(Có thể mở rộng sau: con cháu tự đăng ký tài khoản chờ Admin duyệt.)*

---

## 5. Giao diện Frontend (công khai)

| Trang | Nội dung |
|---|---|
| **Trang chủ** | Giới thiệu dòng họ, ảnh Thủy Tổ, thống kê (số đời, số thành viên) |
| **Sơ đồ cây** | Cây dọc từ trên xuống, zoom/pan, click node → chi tiết |
| **Danh sách theo đời** | Đời 1, 2, 3... phân cấp thụt lề — tối ưu điện thoại (giống bản mẫu) |
| **Chi tiết thành viên** | Đầy đủ tiểu sử, ảnh, ngày giỗ, liên kết cha/con/vợ-chồng |
| **Tìm kiếm** | Theo tên, lọc theo đời |
| **Lịch giỗ** | Danh sách ngày giỗ trong năm (âm lịch) — nhắc con cháu |
| **Tin tức / Sự kiện** | Danh sách + chi tiết bài viết: tin dòng họ, giỗ Tổ, họp họ, thông báo |

Hiển thị cây: **cả hai kiểu** — sơ đồ tương tác *và* danh sách theo đời, người dùng tự chọn.

---

## 6. Khu vực Admin (backend)

- Đăng nhập / đăng xuất, đổi mật khẩu.
- Bảng điều khiển: tổng quan số liệu.
- Quản lý thành viên: form thêm/sửa, chọn cha, sắp thứ tự con, upload ảnh.
- Quản lý hôn nhân: gắn vợ/chồng.
- Quản lý tư liệu/ảnh.
- Quản lý tin tức / sự kiện dòng họ.
- (Admin) Quản lý tài khoản & phân quyền.
- (Admin) Duyệt nội dung nháp.

---

## 7. Lộ trình triển khai đề xuất

1. **Giai đoạn 1 — Nền tảng:** ✅ *đã xong* — Next.js + Prisma + PostgreSQL, schema DB khớp dữ liệu thật (Person, Genealogy, User, TinTuc), **nạp 514 thành viên thật**, xác thực + phân quyền, các trang xem công khai.
2. **Giai đoạn 2 — Hoàn thiện xem công khai:** tìm kiếm nâng cao, lọc theo đời/tình trạng, hiển thị vợ/chồng trong cây.
3. **Giai đoạn 3 — Cây tương tác:** sơ đồ cây zoom/pan cho 514 node (ảo hoá phần hiển thị).
4. **Giai đoạn 4 — Admin CRUD:** form thêm/sửa/xoá thành viên (chọn cha/mẹ, thứ tự), quản lý tin tức, tài khoản.
5. **Giai đoạn 5 — Nâng cao:** lịch giỗ theo âm lịch, upload ảnh chân dung, tộc ước.
6. **Giai đoạn 6 — Triển khai VPS Ubuntu:** ✅ *đã có bộ công cụ* — Docker Compose + Nginx + SSL (xem `docs/HD-TRIEN-KHAI.md`).

### 7.1 Nhập dữ liệu thật (đã thực hiện)

- Nguồn: bản xuất NukeViet `docs/bytec612_smartaudio-2.sql` (MySQL).
- Đã trích xuất 4 bảng gia phả (`giapha_vi_gia_pha*`) → **`prisma/data-nguyen-ba.json`**
  bằng script phân tích (giải mã enum, làm sạch ngày tháng, khử HTML entity).
- `prisma/seed.ts` tự nạp file JSON này. Kiểm tra toàn vẹn đã đạt: **0 lỗi tham
  chiếu cha/mẹ**, đúng 1 gốc (Thủy Tổ id=1), 9 đời.
- Nạp **2 lượt** (chèn phẳng rồi cập nhật quan hệ) để an toàn khóa ngoại tự
  tham chiếu vì có 67 trường hợp mẹ có `id` lớn hơn con.

---

## 8. Các quyết định đã chốt

- [x] **Dòng họ:** Nguyễn Bá — Xã Đại Lai, TP. Bắc Ninh — **đời thứ 9, 514 người**.
- [x] **Nhập liệu:** ✅ đã trích xuất & nạp dữ liệu thật từ bản xuất NukeViet.
- [x] **Triển khai:** **VPS Ubuntu** (Docker Compose + Nginx).
- [x] **Ngôn ngữ:** thuần tiếng Việt.
- [x] **Tin tức/sự kiện:** có (giỗ Tổ, họp họ, thông báo).

## 9. Việc cần chuẩn bị (phía dòng họ)

- Ảnh chân dung các cụ (dữ liệu hiện chỉ 1/514 người có ảnh) — bổ sung dần qua Admin.
- Thông tin VPS Ubuntu (khi tới bước deploy): domain, dung lượng, quyền SSH.
- Ảnh Thủy Tổ + logo/hình ảnh dòng họ (nếu có) cho trang chủ.

---

*Tài liệu này là bản thảo brainstorm để thống nhất trước khi lập trình. Sửa đổi tự do rồi báo tôi khi sẵn sàng bước sang giai đoạn dựng khung.*
