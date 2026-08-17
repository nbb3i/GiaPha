import Link from "next/link";
import { redirect } from "next/navigation";
import { getServerSession } from "next-auth";
import { authOptions, coQuyenAdmin } from "@/lib/auth";
import { prisma } from "@/lib/prisma";
import {
  taoTaiKhoan,
  doiVaiTro,
  datLaiMatKhau,
  xoaTaiKhoan,
} from "./actions";

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
    <div className="space-y-8">
      <div>
        <Link href="/admin" className="text-sm text-gray-500 hover:text-toc">
          ← Bảng điều khiển
        </Link>
        <h1 className="tieu-de-trang text-2xl font-bold text-toc">
          Quản lý tài khoản
        </h1>
      </div>

      {/* Thêm tài khoản */}
      <section className="rounded-lg border border-dong/20 bg-white p-5">
        <h2 className="mb-3 font-semibold text-toc">Thêm tài khoản</h2>
        <form action={taoTaiKhoan} className="grid gap-3 sm:grid-cols-2 lg:grid-cols-5">
          <input name="username" placeholder="Tên đăng nhập *" required className={inp} />
          <input name="hoTen" placeholder="Họ tên" className={inp} />
          <input name="password" type="text" placeholder="Mật khẩu *" required className={inp} />
          <select name="vaiTro" defaultValue="BIENTAP" className={inp}>
            <option value="KHACH">Khách</option>
            <option value="BIENTAP">Biên tập</option>
            <option value="ADMIN">Admin</option>
          </select>
          <button className="rounded bg-toc px-4 py-2 text-sm text-giay hover:bg-toc-light">
            Tạo
          </button>
        </form>
      </section>

      {/* Danh sách */}
      <div className="overflow-hidden rounded-lg border border-dong/20 bg-white">
        <table className="w-full text-left text-sm">
          <thead className="bg-toc text-giay">
            <tr>
              <th className="px-4 py-2">Tên đăng nhập</th>
              <th className="px-4 py-2">Họ tên</th>
              <th className="px-4 py-2">Vai trò</th>
              <th className="px-4 py-2">Đặt lại mật khẩu</th>
              <th className="px-4 py-2"></th>
            </tr>
          </thead>
          <tbody>
            {ds.map((u) => (
              <tr key={u.id} className="border-t border-gray-100 align-middle">
                <td className="px-4 py-2 font-medium">
                  {u.username}
                  {u.id === session.user.id && (
                    <span className="ml-1 text-xs text-dong">(bạn)</span>
                  )}
                </td>
                <td className="px-4 py-2 text-gray-500">{u.hoTen || "—"}</td>
                <td className="px-4 py-2">
                  <form action={doiVaiTro.bind(null, u.id)} className="flex gap-1">
                    <select name="vaiTro" defaultValue={u.vaiTro} className={inpSm}>
                      <option value="KHACH">Khách</option>
                      <option value="BIENTAP">Biên tập</option>
                      <option value="ADMIN">Admin</option>
                    </select>
                    <button className="rounded border border-dong px-2 text-xs text-dong hover:bg-dong/10">
                      Lưu
                    </button>
                  </form>
                </td>
                <td className="px-4 py-2">
                  <form action={datLaiMatKhau.bind(null, u.id)} className="flex gap-1">
                    <input name="password" placeholder="Mật khẩu mới" className={inpSm} />
                    <button className="rounded border border-gray-300 px-2 text-xs text-gray-600 hover:bg-gray-50">
                      Đặt
                    </button>
                  </form>
                </td>
                <td className="px-4 py-2 text-right">
                  {u.id !== session.user.id && (
                    <form action={xoaTaiKhoan.bind(null, u.id)}>
                      <button className="text-xs text-red-600 hover:underline">
                        Xoá
                      </button>
                    </form>
                  )}
                </td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </div>
  );
}

const inp =
  "rounded border border-dong/30 px-3 py-2 text-sm focus:border-dong focus:outline-none";
const inpSm =
  "rounded border border-dong/30 px-2 py-1 text-xs focus:border-dong focus:outline-none";
