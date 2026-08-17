import Link from "next/link";
import { prisma } from "@/lib/prisma";

export const dynamic = "force-dynamic";
export const metadata = { title: "Lịch giỗ" };

export default async function TrangLichGio() {
  const ds = await prisma.person
    .findMany({
      where: { ngayGio: { not: null }, hienThi: true },
      orderBy: [{ doi: "asc" }, { thuTu: "asc" }],
      select: { id: true, hoTen: true, doi: true, ngayGio: true, chucVu: true },
    })
    .catch(() => []);

  return (
    <div className="space-y-6">
      <h1 className="tieu-de-trang text-2xl font-bold text-toc">
        Lịch giỗ dòng họ
      </h1>
      <p className="text-sm text-gray-500">
        Danh sách ngày giỗ (âm lịch) của các bậc tiền nhân — để con cháu ghi nhớ.
      </p>

      {ds.length === 0 ? (
        <p className="text-sm text-gray-500">Chưa có thông tin ngày giỗ.</p>
      ) : (
        <div className="overflow-hidden rounded-lg border border-dong/20 bg-white">
          <table className="w-full text-left text-sm">
            <thead className="bg-toc text-giay">
              <tr>
                <th className="px-4 py-2">Ngày giỗ (ÂL)</th>
                <th className="px-4 py-2">Họ tên</th>
                <th className="px-4 py-2">Đời</th>
              </tr>
            </thead>
            <tbody>
              {ds.map((p) => (
                <tr key={p.id} className="border-t border-gray-100">
                  <td className="px-4 py-2 font-medium text-dong">
                    {p.ngayGio}
                  </td>
                  <td className="px-4 py-2">
                    <Link
                      href={`/gia-pha/${p.id}`}
                      className="text-toc hover:underline"
                    >
                      {p.hoTen}
                    </Link>
                    {p.chucVu ? (
                      <span className="text-gray-400"> · {p.chucVu}</span>
                    ) : null}
                  </td>
                  <td className="px-4 py-2 text-gray-500">Đời {p.doi}</td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      )}
    </div>
  );
}
