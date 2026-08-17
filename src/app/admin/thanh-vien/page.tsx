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
      select: { id: true, hoTen: true, doi: true, chucTuoc: true, trangThai: true },
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
          <button
            disabled
            title="Chức năng thêm sẽ có ở giai đoạn sau"
            className="cursor-not-allowed rounded bg-toc/40 px-4 py-1.5 text-sm text-giay"
          >
            + Thêm thành viên
          </button>
        )}
      </div>

      <div className="overflow-hidden rounded-lg border border-dong/20 bg-white">
        <table className="w-full text-left text-sm">
          <thead className="bg-toc text-giay">
            <tr>
              <th className="px-4 py-2">Họ tên</th>
              <th className="px-4 py-2">Đời</th>
              <th className="px-4 py-2">Chức tước</th>
              <th className="px-4 py-2">Trạng thái</th>
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
                <td className="px-4 py-2 text-gray-500">{p.chucTuoc || "—"}</td>
                <td className="px-4 py-2">
                  <span
                    className={
                      p.trangThai === "HIEN"
                        ? "text-green-600"
                        : "text-amber-600"
                    }
                  >
                    {p.trangThai === "HIEN" ? "Hiển thị" : "Nháp"}
                  </span>
                </td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
      <p className="text-sm text-gray-400">
        * Giai đoạn dựng khung: danh sách chỉ đọc. Form thêm/sửa/xoá sẽ bổ sung sau.
      </p>
    </div>
  );
}
