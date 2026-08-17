import Link from "next/link";
import { notFound, redirect } from "next/navigation";
import { getServerSession } from "next-auth";
import { authOptions, coQuyenBienTap, coQuyenAdmin } from "@/lib/auth";
import { prisma } from "@/lib/prisma";
import FormTinTuc from "@/components/FormTinTuc";
import { capNhatTin, xoaTin } from "../actions";

export const dynamic = "force-dynamic";
export const metadata = { title: "Sửa tin tức" };

export default async function SuaTin({ params }: { params: { id: string } }) {
  const session = await getServerSession(authOptions);
  if (!session) redirect("/admin/dang-nhap");
  if (!coQuyenBienTap(session.user.vaiTro)) redirect("/admin");

  const tin = await prisma.tinTuc.findUnique({ where: { id: params.id } });
  if (!tin) notFound();

  const capNhat = capNhatTin.bind(null, tin.id);
  const xoa = xoaTin.bind(null, tin.id);

  return (
    <div className="mx-auto max-w-3xl space-y-6">
      <Link href="/admin/tin-tuc" className="text-sm text-gray-500 hover:text-toc">
        ← Quản lý tin tức
      </Link>
      <h1 className="tieu-de-trang text-2xl font-bold text-toc">
        Sửa: {tin.tieuDe}
      </h1>

      <FormTinTuc tin={tin} action={capNhat} />

      {coQuyenAdmin(session.user.vaiTro) && (
        <div className="mt-8 rounded-lg border border-red-200 bg-red-50 p-4">
          <h2 className="font-medium text-red-700">Xoá bài viết</h2>
          <form action={xoa} className="mt-3">
            <button className="rounded bg-red-600 px-4 py-2 text-sm font-medium text-white hover:bg-red-700">
              Xoá vĩnh viễn
            </button>
          </form>
        </div>
      )}
    </div>
  );
}
