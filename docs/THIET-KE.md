# Tài liệu thiết kế — Website Quản lý Gia phả Dòng họ

> Bản thảo brainstorm · Cập nhật: 2026-08-17

## 0. Thông tin dòng họ (đã chốt)

| Mục | Giá trị |
|---|---|
| **Tên dòng họ** | Nguyễn Bá |
| **Quê quán** | Xã Đại Lai, Thành phố Bắc Ninh |
| **Số đời hiện tại** | Đời thứ 9 |
| **Ngôn ngữ** | Thuần tiếng Việt (không đa ngôn ngữ) |
| **Nhập liệu ban đầu** | Có — nhập từ bản gia phả cũ, cấp qua **bảng dữ liệu SQL** |
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

### 3.1 Bảng `Person` (Thành viên)

| Trường | Kiểu | Ghi chú |
|---|---|---|
| `id` | UUID/serial | Khóa chính |
| `hoTen` | text | Họ và tên đầy đủ |
| `tenTu` | text? | Tên tự / tên hiệu |
| `gioiTinh` | enum(nam/nữ) | |
| `doi` | int | Thế hệ (đời 1 = Thủy Tổ) |
| `thuTu` | int | Thứ tự con trong gia đình (anh cả = 1) |
| `parentId` | FK → Person | Cha (sinh ra cây gia phả); null nếu là Thủy Tổ |
| `laConNuoi` | bool | Phân biệt con đẻ / con nuôi |
| `ngaySinh` | date? | Dương lịch |
| `ngaySinhAm` | text? | Âm lịch (chuỗi: "12/3 Giáp Tý") |
| `ngayMat` | date? | Dương lịch |
| `ngayMatAm` | text? | Âm lịch |
| `ngayGio` | text? | Ngày giỗ (âm lịch) |
| `noiAnTang` | text? | Nơi an táng / vị trí mộ phần |
| `queQuan` | text? | |
| `noiOHienTai` | text? | Nơi ở hiện tại |
| `ngheNghiep` | text? | |
| `chucTuoc` | text? | Chức tước / học vị |
| `tieuSu` | text? (dài) | Tiểu sử |
| `congDuc` | text? (dài) | Công đức với dòng họ |
| `avatarUrl` | text? | Ảnh đại diện |
| `trangThai` | enum(hiển thị/nháp) | Duyệt nội dung |
| `createdAt`/`updatedAt` | timestamp | |

> **Cây gia phả** được suy ra từ `parentId` (quan hệ cha → con). Đây là mô hình adjacency-list, đơn giản và đủ dùng.

### 3.2 Bảng `Marriage` (Hôn nhân)

| Trường | Kiểu | Ghi chú |
|---|---|---|
| `id` | UUID | |
| `chongId` | FK → Person | |
| `voId` | FK → Person | |
| `thuTuHonNhan` | int | Đời vợ/chồng thứ mấy (hỗ trợ nhiều đời) |
| `ghiChu` | text? | Con dâu/con rể, ghi chú khác |

> Con của một cặp vẫn gắn qua `Person.parentId`. Người phối ngẫu (dâu/rể) là một `Person` nhưng thường **không có `parentId`** trong dòng họ (họ thuộc dòng khác) — đánh dấu bằng cờ hoặc để `parentId` null + liên kết qua `Marriage`.

### 3.3 Bảng `Media` (Tư liệu)

| Trường | Kiểu | Ghi chú |
|---|---|---|
| `id` | UUID | |
| `personId` | FK → Person? | Gắn với 1 người (hoặc null = tư liệu chung) |
| `loai` | enum | chân dung / mộ / scan gia phả / sắc phong / khác |
| `url` | text | |
| `moTa` | text? | |

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

1. **Giai đoạn 1 — Nền tảng:** khởi tạo Next.js + Prisma + PostgreSQL, schema DB (Person, Marriage, Media, User, TinTuc), **script import SQL** cho dữ liệu gia phả cũ, seed dữ liệu mẫu dòng họ Nguyễn Bá (9 đời).
2. **Giai đoạn 2 — Xem công khai:** danh sách theo đời + trang chi tiết + tìm kiếm.
3. **Giai đoạn 3 — Cây tương tác:** sơ đồ cây zoom/pan.
4. **Giai đoạn 4 — Auth & Admin:** đăng nhập, phân quyền 3 cấp, form CRUD.
5. **Giai đoạn 5 — Nâng cao:** lịch giỗ, tin tức/sự kiện, upload ảnh/tư liệu, duyệt nội dung.
6. **Giai đoạn 6 — Triển khai VPS Ubuntu:** Docker Compose (app + PostgreSQL) + Nginx reverse proxy + hướng dẫn deploy chi tiết.

### 7.1 Nhập dữ liệu gia phả cũ (SQL)

- Cung cấp **file `.sql`** khớp schema (`INSERT INTO "Person" (...)`, `Marriage`, ...).
- Quan hệ cha–con qua `parentId`; import theo thứ tự đời (đời 1 trước) để khóa ngoại hợp lệ.
- Kèm script kiểm tra tính toàn vẹn (mỗi người trừ Thủy Tổ đều có `parentId` hợp lệ; `doi` = `doi` của cha + 1).

---

## 8. Các quyết định đã chốt

- [x] **Dòng họ:** Nguyễn Bá — Xã Đại Lai, TP. Bắc Ninh — hiện đến **đời thứ 9**.
- [x] **Nhập liệu:** có, qua **bảng dữ liệu SQL** khớp schema.
- [x] **Triển khai:** **VPS Ubuntu** (Docker Compose + Nginx).
- [x] **Ngôn ngữ:** thuần tiếng Việt.
- [x] **Tin tức/sự kiện:** có (giỗ Tổ, họp họ, thông báo).

## 9. Việc cần chuẩn bị (phía dòng họ)

- Bản gia phả cũ (Excel/Word/PDF/ảnh scan) để tôi lập cấu trúc file SQL nhập liệu.
- Thông tin VPS Ubuntu (khi tới bước deploy): domain, dung lượng, quyền SSH.
- Ảnh Thủy Tổ + logo/hình ảnh dòng họ (nếu có) cho trang chủ.

---

*Tài liệu này là bản thảo brainstorm để thống nhất trước khi lập trình. Sửa đổi tự do rồi báo tôi khi sẵn sàng bước sang giai đoạn dựng khung.*
