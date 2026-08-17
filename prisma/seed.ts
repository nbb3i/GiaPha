/**
 * Seed dữ liệu gia phả dòng họ Nguyễn Bá.
 *
 * Nếu có file prisma/data-nguyen-ba.json (trích từ dữ liệu thật) sẽ nạp
 * TOÀN BỘ dữ liệu thật. Nếu không, tạo vài bản ghi mẫu tối thiểu.
 *
 * File JSON được sinh từ bản xuất NukeViet bằng script phân tích
 * (docs/bytec612_smartaudio-2.sql). Xem docs/THIET-KE.md mục 3.
 */
import { PrismaClient, Prisma, VaiTro, LoaiTin } from "@prisma/client";
import bcrypt from "bcryptjs";
import { readFileSync, existsSync } from "node:fs";
import { join } from "node:path";

const prisma = new PrismaClient();

type PersonJSON = Omit<
  Prisma.PersonCreateManyInput,
  "createdAt" | "updatedAt" | "hienThi"
>;
type GeneJSON = Omit<Prisma.GenealogyCreateManyInput, "createdAt">;

async function main() {
  console.log("🌱 Bắt đầu seed...");

  // Dọn dữ liệu cũ
  await prisma.person.deleteMany();
  await prisma.genealogy.deleteMany();
  await prisma.tinTuc.deleteMany();

  const jsonPath = join(process.cwd(), "prisma", "data-nguyen-ba.json");

  if (existsSync(jsonPath)) {
    const data = JSON.parse(readFileSync(jsonPath, "utf-8")) as {
      genealogy: GeneJSON[];
      persons: PersonJSON[];
    };

    if (data.genealogy?.length) {
      await prisma.genealogy.createMany({ data: data.genealogy });
      console.log(`   ✅ Genealogy: ${data.genealogy.length}`);
    }

    // Nạp 2 lượt để an toàn khóa ngoại tự tham chiếu (cha/mẹ có thể có id
    // lớn hơn con): (1) chèn toàn bộ với parentId/motherId = null;
    // (2) cập nhật lại quan hệ khi mọi bản ghi đã tồn tại.
    const phang = data.persons.map((p) => ({
      ...p,
      parentId: null,
      motherId: null,
    }));
    await prisma.person.createMany({ data: phang });

    const canCapNhat = data.persons.filter((p) => p.parentId || p.motherId);
    await prisma.$transaction(
      canCapNhat.map((p) =>
        prisma.person.update({
          where: { id: p.id! },
          data: { parentId: p.parentId ?? null, motherId: p.motherId ?? null },
        }),
      ),
    );
    console.log(
      `   ✅ Thành viên (dữ liệu thật): ${data.persons.length} (cập nhật quan hệ: ${canCapNhat.length})`,
    );
  } else {
    console.log("   ⚠️  Không thấy data-nguyen-ba.json — tạo dữ liệu mẫu tối thiểu.");
    await prisma.genealogy.create({
      data: {
        id: 1,
        tieuDe: "Nguyễn Bá - Trung Thành, Đại Lai, Gia Bình",
        nam: "2025",
      },
    });
    await prisma.person.createMany({
      data: [
        { id: 1, doi: 1, hoTen: "Nguyễn Bá (Thủy Tổ)", gioiTinh: "NAM" },
        { id: 2, doi: 2, parentId: 1, hoTen: "Nguyễn Bá (đời 2)", gioiTinh: "NAM" },
      ],
    });
  }

  // Tài khoản
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

  // Tin tức mẫu
  await prisma.tinTuc.createMany({
    data: [
      {
        tieuDe: "Thông báo Giỗ Tổ dòng họ Nguyễn Bá",
        slug: "gio-to-dong-ho-nguyen-ba",
        loai: LoaiTin.GIO_TO,
        noiDung:
          "Kính mời toàn thể con cháu dòng họ Nguyễn Bá về nhà thờ họ tại Trung Thành, Đại Lai dự lễ Giỗ Tổ.",
      },
    ],
  });

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
