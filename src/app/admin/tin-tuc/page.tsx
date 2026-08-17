import Link from "next/link";
import { redirect } from "next/navigation";
import { getServerSession } from "next-auth";
import { authOptions, coQuyenBienTap } from "@/lib/auth";
import { prisma } from "@/lib/prisma";

export const dynamic = "force-dynamic";
export const metadata = { title: "Quản lý tin tức" };

const nhanLoai: Record<string, string> = {
  TIN_TUC: "Tin tức",
  GIO_TO: "Giỗ Tổ",
  HOP_HO: "Họp họ",
  THONG_BAO: "Thông báo",
};

export default async function QuanLyTinTuc() {
  const session = await getServerSession(authOptions);
  if (!session) redirect("/admin/dang-nhap");
  const suaDuoc = coQuyenBienTap(session.user.vaiTro);

  const ds = await prisma.tinTuc
    .findMany({ orderBy: { createdAt: "desc" } })
    .catch(() => []);

  return (
    <div className="space-y-6">
      <div className="flex items-center justify-between">
        <div>
          <Link href="/admin" className="text-sm text-gray-500 hover:text-toc">
            ← Bảng điều khiển
          </Link>
          <h1 className="tieu-de-trang text-2xl font-bold text-toc">
            Quản lý tin tức
          </h1>
        </div>
        {suaDuoc && (
          <Link
            href="/admin/tin-tuc/moi"
            className="rounded bg-toc px-4 py-1.5 text-sm text-giay hover:bg-toc-light"
          >
            + Thêm bài viết
          </Link>
        )}
      </div>

      {ds.length === 0 ? (
        <p className="text-sm text-gray-500">Chưa có bài viết.</p>
      ) : (
        <div className="overflow-hidden rounded-lg border border-dong/20 bg-white">
          <table className="w-full text-left text-sm">
            <thead className="bg-toc text-giay">
              <tr>
                <th className="px-4 py-2">Tiêu đề</th>
                <th className="px-4 py-2">Loại</th>
                <th className="px-4 py-2">Trạng thái</th>
                {suaDuoc && <th className="px-4 py-2"></th>}
              </tr>
            </thead>
            <tbody>
              {ds.map((t) => (
                <tr key={t.id} className="border-t border-gray-100">
                  <td className="px-4 py-2">{t.tieuDe}</td>
                  <td className="px-4 py-2 text-gray-500">
                    {nhanLoai[t.loai] || t.loai}
                  </td>
                  <td className="px-4 py-2">
                    <span
                      className={
                        t.trangThai === "HIEN"
                          ? "text-green-600"
                          : "text-amber-600"
                      }
                    >
                      {t.trangThai === "HIEN" ? "Hiển thị" : "Nháp"}
                    </span>
                  </td>
                  {suaDuoc && (
                    <td className="px-4 py-2 text-right">
                      <Link
                        href={`/admin/tin-tuc/${t.id}`}
                        className="text-sm text-dong hover:underline"
                      >
                        Sửa
                      </Link>
                    </td>
                  )}
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      )}
    </div>
  );
}
