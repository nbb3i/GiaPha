import Link from "next/link";
import { notFound, redirect } from "next/navigation";
import { getServerSession } from "next-auth";
import { authOptions, coQuyenBienTap, coQuyenAdmin } from "@/lib/auth";
import { prisma } from "@/lib/prisma";
import FormThanhVien from "@/components/FormThanhVien";
import { capNhatThanhVien, xoaThanhVien } from "../actions";

export const dynamic = "force-dynamic";
export const metadata = { title: "Sửa thành viên" };

export default async function SuaThanhVien({
  params,
}: {
  params: { id: string };
}) {
  const session = await getServerSession(authOptions);
  if (!session) redirect("/admin/dang-nhap");
  if (!coQuyenBienTap(session.user.vaiTro)) redirect("/admin");

  const id = Number(params.id);
  if (!Number.isFinite(id)) notFound();

  const [nguoi, danhSach] = await Promise.all([
    prisma.person.findUnique({ where: { id } }),
    prisma.person.findMany({
      where: { id: { not: id } },
      orderBy: [{ doi: "asc" }, { thuTu: "asc" }],
      select: { id: true, hoTen: true, doi: true },
    }),
  ]);
  if (!nguoi) notFound();

  const capNhat = capNhatThanhVien.bind(null, id);
  const xoa = xoaThanhVien.bind(null, id);
  const laAdmin = coQuyenAdmin(session.user.vaiTro);

  return (
    <div className="mx-auto max-w-3xl space-y-6">
      <div className="flex items-center justify-between">
        <Link href="/admin/thanh-vien" className="text-sm text-gray-500 hover:text-toc">
          ← Danh sách thành viên
        </Link>
        <Link
          href={`/gia-pha/${id}`}
          className="text-sm text-dong hover:underline"
          target="_blank"
        >
          Xem trang công khai ↗
        </Link>
      </div>
      <h1 className="tieu-de-trang text-2xl font-bold text-toc">
        Sửa: {nguoi.hoTen}
      </h1>

      <FormThanhVien nguoi={nguoi} danhSach={danhSach} action={capNhat} />

      {laAdmin && (
        <div className="mt-8 rounded-lg border border-red-200 bg-red-50 p-4">
          <h2 className="font-medium text-red-700">Xoá thành viên</h2>
          <p className="mb-3 mt-1 text-sm text-red-600">
            Thao tác không thể hoàn tác. Các con đang gắn với người này sẽ bị gỡ
            liên kết cha/mẹ (không bị xoá theo).
          </p>
          <form action={xoa}>
            <button className="rounded bg-red-600 px-4 py-2 text-sm font-medium text-white hover:bg-red-700">
              Xoá vĩnh viễn
            </button>
          </form>
        </div>
      )}
    </div>
  );
}
