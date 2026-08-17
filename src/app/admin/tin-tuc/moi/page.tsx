import Link from "next/link";
import { redirect } from "next/navigation";
import { getServerSession } from "next-auth";
import { authOptions, coQuyenBienTap } from "@/lib/auth";
import FormTinTuc from "@/components/FormTinTuc";
import { taoTin } from "../actions";

export const dynamic = "force-dynamic";
export const metadata = { title: "Thêm tin tức" };

export default async function ThemTin() {
  const session = await getServerSession(authOptions);
  if (!session) redirect("/admin/dang-nhap");
  if (!coQuyenBienTap(session.user.vaiTro)) redirect("/admin");

  return (
    <div className="mx-auto max-w-3xl space-y-6">
      <Link href="/admin/tin-tuc" className="text-sm text-gray-500 hover:text-toc">
        ← Quản lý tin tức
      </Link>
      <h1 className="tieu-de-trang text-2xl font-bold text-toc">Thêm bài viết</h1>
      <FormTinTuc action={taoTin} />
    </div>
  );
}
