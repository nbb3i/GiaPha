/**
 * Seed dữ liệu MẪU cho gia phả dòng họ Nguyễn Bá.
 *
 * LƯU Ý: Đây là dữ liệu GIẢ ĐỊNH để minh hoạ giao diện.
 * Khi có dữ liệu thật, thay thế phần `nguoiMau` bên dưới hoặc
 * dùng file SQL import (xem docs/THIET-KE.md, mục 7.1).
 */
import { PrismaClient, GioiTinh, VaiTro, LoaiTin } from "@prisma/client";
import bcrypt from "bcryptjs";

const prisma = new PrismaClient();

// Định nghĩa cây mẫu bằng "mã" nội bộ để nối cha-con dễ đọc
type NguoiMau = {
  ma: string;
  chaMa?: string;
  hoTen: string;
  tenTu?: string;
  gioiTinh?: GioiTinh;
  doi: number;
  thuTu?: number;
  ngayGio?: string;
  ngheNghiep?: string;
  chucTuoc?: string;
  tieuSu?: string;
  congDuc?: string;
  noiAnTang?: string;
};

const nguoiMau: NguoiMau[] = [
  // ĐỜI 1 — Thủy Tổ
  {
    ma: "to",
    hoTen: "Nguyễn Bá Phúc",
    tenTu: "Phúc Am",
    doi: 1,
    thuTu: 1,
    ngayGio: "Rằm tháng Giêng",
    chucTuoc: "Thủy Tổ",
    noiAnTang: "Nghĩa trang dòng họ, xã Đại Lai",
    tieuSu:
      "Thủy Tổ dòng họ Nguyễn Bá, khai cơ lập nghiệp tại xã Đại Lai, phủ Gia Bình (nay thuộc TP. Bắc Ninh).",
    congDuc:
      "Người đặt nền móng cho dòng họ, gây dựng gia phong hiếu học, đoàn kết con cháu nhiều đời.",
  },

  // ĐỜI 2
  { ma: "d2a", chaMa: "to", hoTen: "Nguyễn Bá Đức", doi: 2, thuTu: 1, ngayGio: "12 tháng 3" },
  { ma: "d2b", chaMa: "to", hoTen: "Nguyễn Bá Nhân", doi: 2, thuTu: 2, ngayGio: "05 tháng 7" },

  // ĐỜI 3
  { ma: "d3a", chaMa: "d2a", hoTen: "Nguyễn Bá Trung", doi: 3, thuTu: 1, chucTuoc: "Lý trưởng", ngayGio: "20 tháng 8" },
  { ma: "d3b", chaMa: "d2a", hoTen: "Nguyễn Bá Tín", doi: 3, thuTu: 2 },
  { ma: "d3c", chaMa: "d2b", hoTen: "Nguyễn Bá Lễ", doi: 3, thuTu: 1 },

  // ĐỜI 4
  { ma: "d4a", chaMa: "d3a", hoTen: "Nguyễn Bá Thành", doi: 4, thuTu: 1, ngheNghiep: "Nhà giáo", tieuSu: "Dạy học trong vùng, được dân làng kính trọng." },
  { ma: "d4b", chaMa: "d3a", hoTen: "Nguyễn Bá Đạt", doi: 4, thuTu: 2 },
  { ma: "d4c", chaMa: "d3b", hoTen: "Nguyễn Bá Khang", doi: 4, thuTu: 1 },

  // ĐỜI 5
  { ma: "d5a", chaMa: "d4a", hoTen: "Nguyễn Bá Hùng", doi: 5, thuTu: 1 },
  { ma: "d5b", chaMa: "d4a", hoTen: "Nguyễn Bá Dũng", doi: 5, thuTu: 2 },
  { ma: "d5c", chaMa: "d4b", hoTen: "Nguyễn Bá Minh", doi: 5, thuTu: 1 },

  // ĐỜI 6
  { ma: "d6a", chaMa: "d5a", hoTen: "Nguyễn Bá Sơn", doi: 6, thuTu: 1 },
  { ma: "d6b", chaMa: "d5a", hoTen: "Nguyễn Bá Hải", doi: 6, thuTu: 2 },

  // ĐỜI 7
  { ma: "d7a", chaMa: "d6a", hoTen: "Nguyễn Bá Long", doi: 7, thuTu: 1 },
  { ma: "d7b", chaMa: "d6a", hoTen: "Nguyễn Bá Phong", doi: 7, thuTu: 2 },

  // ĐỜI 8
  { ma: "d8a", chaMa: "d7a", hoTen: "Nguyễn Bá Biên", doi: 8, thuTu: 1, ngheNghiep: "Kỹ sư" },

  // ĐỜI 9
  { ma: "d9a", chaMa: "d8a", hoTen: "Nguyễn Bá An", doi: 9, thuTu: 1 },
  { ma: "d9b", chaMa: "d8a", hoTen: "Nguyễn Bá Bình", doi: 9, thuTu: 2 },
];

async function main() {
  console.log("🌱 Bắt đầu seed dữ liệu mẫu...");

  // 1) Xoá dữ liệu cũ (an toàn cho môi trường dev)
  await prisma.marriage.deleteMany();
  await prisma.media.deleteMany();
  await prisma.person.deleteMany();
  await prisma.tinTuc.deleteMany();

  // 2) Tạo Person theo thứ tự đời để parentId hợp lệ
  const idTheoMa = new Map<string, string>();
  const sapXep = [...nguoiMau].sort((a, b) => a.doi - b.doi);

  for (const n of sapXep) {
    const created = await prisma.person.create({
      data: {
        hoTen: n.hoTen,
        tenTu: n.tenTu,
        gioiTinh: n.gioiTinh ?? GioiTinh.NAM,
        doi: n.doi,
        thuTu: n.thuTu ?? 1,
        parentId: n.chaMa ? idTheoMa.get(n.chaMa) : null,
        ngayGio: n.ngayGio,
        ngheNghiep: n.ngheNghiep,
        chucTuoc: n.chucTuoc,
        tieuSu: n.tieuSu,
        congDuc: n.congDuc,
        noiAnTang: n.noiAnTang,
        queQuan: "Xã Đại Lai, TP. Bắc Ninh",
      },
    });
    idTheoMa.set(n.ma, created.id);
  }
  console.log(`   ✅ Đã tạo ${sapXep.length} thành viên mẫu (9 đời)`);

  // 3) Tài khoản
  const adminUser = process.env.ADMIN_USERNAME || "admin";
  const adminPass = process.env.ADMIN_PASSWORD || "Admin@12345";
  await prisma.user.upsert({
    where: { username: adminUser },
    update: {},
    create: {
      username: adminUser,
      hoTen: "Quản trị viên",
      passwordHash: await bcrypt.hash(adminPass, 10),
      vaiTro: VaiTro.ADMIN,
    },
  });
  await prisma.user.upsert({
    where: { username: "bientap" },
    update: {},
    create: {
      username: "bientap",
      hoTen: "Biên tập viên",
      passwordHash: await bcrypt.hash("Bientap@123", 10),
      vaiTro: VaiTro.BIENTAP,
    },
  });
  console.log(`   ✅ Tài khoản: ${adminUser} (ADMIN), bientap (BIENTAP)`);

  // 4) Tin tức mẫu
  await prisma.tinTuc.createMany({
    data: [
      {
        tieuDe: "Thông báo Giỗ Tổ dòng họ Nguyễn Bá năm nay",
        slug: "gio-to-dong-ho-nguyen-ba",
        loai: LoaiTin.GIO_TO,
        noiDung:
          "Kính mời toàn thể con cháu dòng họ Nguyễn Bá về nhà thờ họ tại xã Đại Lai dự lễ Giỗ Tổ. Đây là dữ liệu mẫu, ban quản trị sẽ cập nhật nội dung thật.",
      },
      {
        tieuDe: "Kế hoạch họp họ và tu sửa nhà thờ",
        slug: "hop-ho-tu-sua-nha-tho",
        loai: LoaiTin.HOP_HO,
        noiDung:
          "Nội dung mẫu về buổi họp họ thường niên và kế hoạch tu sửa nhà thờ dòng họ.",
      },
    ],
  });
  console.log("   ✅ Đã tạo 2 tin tức mẫu");

  console.log("🌱 Seed hoàn tất!");
}

main()
  .catch((e) => {
    console.error(e);
    process.exit(1);
  })
  .finally(async () => {
    await prisma.$disconnect();
  });
