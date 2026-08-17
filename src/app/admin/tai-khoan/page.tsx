import Link from "next/link";
import { redirect } from "next/navigation";
import { getServerSession } from "next-auth";
import { authOptions, coQuyenAdmin } from "@/lib/auth";
import { prisma } from "@/lib/prisma";

export const dynamic = "force-dynamic";
export const metadata = { title: "Quản lý tài khoản" };

export default async function QuanLyTaiKhoan() {
  const session = await getServerSession(authOptions);
  if (!session) redirect("/admin/dang-nhap");
  if (!coQuyenAdmin(session.user.vaiTro)) redirect("/admin");

  const ds = await prisma.user
    .findMany({
      orderBy: { createdAt: "asc" },
      select: { id: true, username: true, hoTen: true, vaiTro: true },
    })
    .catch(() => []);

  return (
    <div className="space-y-6">
      <div>
        <Link href="/admin" className="text-sm text-gray-500 hover:text-toc">
          ← Bảng điều khiển
        </Link>
        <h1 className="tieu-de-trang text-2xl font-bold text-toc">
          Quản lý tài khoản
        </h1>
      </div>

      <div className="overflow-hidden rounded-lg border border-dong/20 bg-white">
        <table className="w-full text-left text-sm">
          <thead className="bg-toc text-giay">
            <tr>
              <th className="px-4 py-2">Tên đăng nhập</th>
              <th className="px-4 py-2">Họ tên</th>
              <th className="px-4 py-2">Vai trò</th>
            </tr>
          </thead>
          <tbody>
            {ds.map((u) => (
              <tr key={u.id} className="border-t border-gray-100">
                <td className="px-4 py-2 font-medium">{u.username}</td>
                <td className="px-4 py-2 text-gray-500">{u.hoTen || "—"}</td>
                <td className="px-4 py-2">{u.vaiTro}</td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
      <p className="text-sm text-gray-400">
        * Giai đoạn dựng khung: chỉ đọc. Chức năng tạo tài khoản, đổi vai trò, đặt
        lại mật khẩu sẽ bổ sung sau.
      </p>
    </div>
  );
}
