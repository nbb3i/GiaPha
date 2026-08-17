import Link from "next/link";
import { redirect } from "next/navigation";
import { getServerSession } from "next-auth";
import { authOptions, coQuyenBienTap } from "@/lib/auth";
import { prisma } from "@/lib/prisma";

export const dynamic = "force-dynamic";
export const metadata = { title: "Quản lý thành viên" };

export default async function QuanLyThanhVien() {
  const session = await getServerSession(authOptions);
  if (!session) redirect("/admin/dang-nhap");
  const suaDuoc = coQuyenBienTap(session.user.vaiTro);

  const ds = await prisma.person
    .findMany({
      orderBy: [{ doi: "asc" }, { thuTu: "asc" }],
      take: 300,
      select: { id: true, hoTen: true, doi: true, chucVu: true, hienThi: true },
    })
    .catch(() => []);

  return (
    <div className="space-y-6">
      <div className="flex items-center justify-between">
        <div>
          <Link href="/admin" className="text-sm text-gray-500 hover:text-toc">
            ← Bảng điều khiển
          </Link>
          <h1 className="tieu-de-trang text-2xl font-bold text-toc">
            Quản lý thành viên
          </h1>
        </div>
        {suaDuoc && (
          <Link
            href="/admin/thanh-vien/moi"
            className="rounded bg-toc px-4 py-1.5 text-sm text-giay hover:bg-toc-light"
          >
            + Thêm thành viên
          </Link>
        )}
      </div>

      <div className="overflow-hidden rounded-lg border border-dong/20 bg-white">
        <table className="w-full text-left text-sm">
          <thead className="bg-toc text-giay">
            <tr>
              <th className="px-4 py-2">Họ tên</th>
              <th className="px-4 py-2">Đời</th>
              <th className="px-4 py-2">Chức vụ</th>
              <th className="px-4 py-2">Hiển thị</th>
              {suaDuoc && <th className="px-4 py-2"></th>}
            </tr>
          </thead>
          <tbody>
            {ds.map((p) => (
              <tr key={p.id} className="border-t border-gray-100">
                <td className="px-4 py-2">
                  <Link
                    href={`/gia-pha/${p.id}`}
                    className="text-toc hover:underline"
                  >
                    {p.hoTen}
                  </Link>
                </td>
                <td className="px-4 py-2 text-gray-500">{p.doi}</td>
                <td className="px-4 py-2 text-gray-500">{p.chucVu || "—"}</td>
                <td className="px-4 py-2">
                  <span
                    className={p.hienThi ? "text-green-600" : "text-amber-600"}
                  >
                    {p.hienThi ? "Hiển thị" : "Ẩn"}
                  </span>
                </td>
                {suaDuoc && (
                  <td className="px-4 py-2 text-right">
                    <Link
                      href={`/admin/thanh-vien/${p.id}`}
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
      <p className="text-sm text-gray-400">
        Hiển thị tối đa 300 thành viên đầu. Tổng {ds.length} bản ghi trong trang này.
      </p>
    </div>
  );
}
