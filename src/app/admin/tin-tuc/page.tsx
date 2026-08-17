import Link from "next/link";
import { redirect } from "next/navigation";
import { getServerSession } from "next-auth";
import { authOptions } from "@/lib/auth";

export const dynamic = "force-dynamic";
export const metadata = { title: "Quản lý tin tức" };

export default async function QuanLyTinTuc() {
  const session = await getServerSession(authOptions);
  if (!session) redirect("/admin/dang-nhap");

  return (
    <div className="space-y-4">
      <Link href="/admin" className="text-sm text-gray-500 hover:text-toc">
        ← Bảng điều khiển
      </Link>
      <h1 className="tieu-de-trang text-2xl font-bold text-toc">
        Quản lý tin tức
      </h1>
      <p className="rounded border border-amber-300 bg-amber-50 p-4 text-sm text-amber-800">
        🚧 Trang quản lý tin tức (thêm/sửa/xoá bài viết) sẽ được xây dựng ở giai
        đoạn tiếp theo.
      </p>
    </div>
  );
}
