import Link from "next/link";
import { redirect } from "next/navigation";
import { getServerSession } from "next-auth";
import { authOptions, coQuyenBienTap } from "@/lib/auth";
import { prisma } from "@/lib/prisma";
import FormThanhVien from "@/components/FormThanhVien";
import { taoThanhVien } from "../actions";

export const dynamic = "force-dynamic";
export const metadata = { title: "Thêm thành viên" };

export default async function ThemThanhVien() {
  const session = await getServerSession(authOptions);
  if (!session) redirect("/admin/dang-nhap");
  if (!coQuyenBienTap(session.user.vaiTro)) redirect("/admin");

  const danhSach = await prisma.person.findMany({
    orderBy: [{ doi: "asc" }, { thuTu: "asc" }],
    select: { id: true, hoTen: true, doi: true },
  });

  return (
    <div className="mx-auto max-w-3xl space-y-6">
      <Link href="/admin/thanh-vien" className="text-sm text-gray-500 hover:text-toc">
        ← Danh sách thành viên
      </Link>
      <h1 className="tieu-de-trang text-2xl font-bold text-toc">
        Thêm thành viên
      </h1>
      <FormThanhVien danhSach={danhSach} action={taoThanhVien} />
    </div>
  );
}
