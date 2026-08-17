import Link from "next/link";
import { redirect } from "next/navigation";
import { getServerSession } from "next-auth";
import { authOptions, coQuyenAdmin } from "@/lib/auth";
import { prisma } from "@/lib/prisma";
import DangXuat from "./DangXuat";

export const dynamic = "force-dynamic";
export const metadata = { title: "Quản trị" };

export default async function BangDieuKhien() {
  const session = await getServerSession(authOptions);
  if (!session) redirect("/admin/dang-nhap");

  const vaiTro = session.user.vaiTro;
  const [soThanhVien, soTin, soUser] = await Promise.all([
    prisma.person.count().catch(() => 0),
    prisma.tinTuc.count().catch(() => 0),
    prisma.user.count().catch(() => 0),
  ]);

  return (
    <div className="space-y-8">
      <div className="flex items-center justify-between">
        <div>
          <h1 className="tieu-de-trang text-2xl font-bold text-toc">
            Bảng điều khiển
          </h1>
          <p className="text-sm text-gray-500">
            Xin chào <b>{session.user.name}</b> · Vai trò: {vaiTro}
          </p>
        </div>
        <DangXuat />
      </div>

      <div className="grid grid-cols-2 gap-4 sm:grid-cols-3">
        <O so={soThanhVien} nhan="Thành viên" href="/admin/thanh-vien" />
        <O so={soTin} nhan="Tin tức" href="/admin/tin-tuc" />
        {coQuyenAdmin(vaiTro) && (
          <O so={soUser} nhan="Tài khoản" href="/admin/tai-khoan" />
        )}
      </div>

      <section className="rounded-lg border border-dong/20 bg-white p-4 text-sm text-gray-600">
        <p className="font-medium text-toc">Hướng dẫn nhanh</p>
        <ul className="mt-2 list-disc space-y-1 pl-5">
          <li><b>Thành viên</b>: thêm/sửa (Biên tập trở lên), xoá (Admin). Chọn cha/mẹ, đời, thứ tự khi thêm.</li>
          <li><b>Tin tức</b>: đăng bài giỗ Tổ, họp họ, thông báo — có thể để nháp trước khi hiện.</li>
          {coQuyenAdmin(vaiTro) && (
            <li><b>Tài khoản</b>: tạo tài khoản, đổi vai trò, đặt lại mật khẩu, xoá.</li>
          )}
        </ul>
      </section>
    </div>
  );
}

function O({ so, nhan, href }: { so: number; nhan: string; href: string }) {
  return (
    <Link
      href={href}
      className="rounded-lg border border-dong/20 bg-white p-6 text-center shadow-sm transition hover:border-dong"
    >
      <p className="text-3xl font-bold text-toc">{so}</p>
      <p className="mt-1 text-sm text-gray-500">{nhan}</p>
    </Link>
  );
}
