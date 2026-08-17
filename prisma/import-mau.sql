-- =====================================================================
-- MẪU FILE IMPORT SQL — Gia phả dòng họ Nguyễn Bá
-- =====================================================================
-- Dùng khi có dữ liệu THẬT để thay cho dữ liệu seed mẫu.
--
-- QUY TẮC QUAN TRỌNG:
--   1. Import theo THỨ TỰ ĐỜI (đời 1 trước, rồi 2, 3, ...) để khoá
--      ngoại parentId luôn hợp lệ.
--   2. Cột "id" có thể tự đặt (chuỗi) hoặc để Prisma sinh; ở đây ta tự
--      đặt id dạng 'p001', 'p002'... cho dễ nối cha-con.
--   3. parentId trỏ tới id của người cha. Thuỷ Tổ để NULL.
--   4. Chạy sau khi đã tạo schema:  npm run db:push
--   5. Cách chạy:  psql "$DATABASE_URL" -f prisma/import-mau.sql
--
-- Bảng "Person" — các cột chính (xem prisma/schema.prisma để đủ):
--   id, "hoTen", "tenTu", "gioiTinh"(NAM/NU), doi, "thuTu",
--   "parentId", "ngayGio", "chucTuoc", "ngheNghiep", "tieuSu",
--   "congDuc", "noiAnTang", "queQuan", "trangThai"(HIEN/NHAP),
--   "createdAt", "updatedAt"
-- =====================================================================

-- (Tuỳ chọn) Xoá dữ liệu cũ trước khi nhập:
-- DELETE FROM "Marriage";
-- DELETE FROM "Media";
-- DELETE FROM "Person";

-- ĐỜI 1 — Thuỷ Tổ
INSERT INTO "Person"
  (id, "hoTen", "gioiTinh", doi, "thuTu", "parentId", "chucTuoc", "queQuan", "trangThai", "createdAt", "updatedAt")
VALUES
  ('p001', 'Nguyễn Bá ...', 'NAM', 1, 1, NULL, 'Thuỷ Tổ', 'Xã Đại Lai, TP. Bắc Ninh', 'HIEN', NOW(), NOW());

-- ĐỜI 2
INSERT INTO "Person"
  (id, "hoTen", "gioiTinh", doi, "thuTu", "parentId", "trangThai", "createdAt", "updatedAt")
VALUES
  ('p002', 'Nguyễn Bá ...', 'NAM', 2, 1, 'p001', 'HIEN', NOW(), NOW()),
  ('p003', 'Nguyễn Bá ...', 'NAM', 2, 2, 'p001', 'HIEN', NOW(), NOW());

-- ĐỜI 3 ... (tiếp tục theo mẫu trên, parentId trỏ về id đời trên)

-- =====================================================================
-- HÔN NHÂN (tuỳ chọn) — vợ/chồng là 1 Person, đánh dấu "laDauRe" = true
-- INSERT INTO "Person" (id, "hoTen", "gioiTinh", doi, "laDauRe", "trangThai", "createdAt", "updatedAt")
--   VALUES ('v001', 'Trần Thị ...', 'NU', 2, true, 'HIEN', NOW(), NOW());
-- INSERT INTO "Marriage" (id, "chongId", "voId", "thuTuHonNhan", "createdAt")
--   VALUES ('m001', 'p002', 'v001', 1, NOW());
-- =====================================================================

-- KIỂM TRA TÍNH TOÀN VẸN sau khi nhập:
--   -- Mỗi người (trừ Thuỷ Tổ) phải có cha hợp lệ:
--   SELECT * FROM "Person" c
--   WHERE c.doi > 1 AND c."laDauRe" = false
--     AND NOT EXISTS (SELECT 1 FROM "Person" p WHERE p.id = c."parentId");
--   -- Đời con phải = đời cha + 1:
--   SELECT c.id, c.doi, p.doi AS doi_cha FROM "Person" c
--   JOIN "Person" p ON p.id = c."parentId" WHERE c.doi <> p.doi + 1;
