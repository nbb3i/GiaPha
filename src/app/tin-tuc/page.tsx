import Link from "next/link";
import { prisma } from "@/lib/prisma";

export const dynamic = "force-dynamic";
export const metadata = { title: "Tin tức & Sự kiện" };

const nhanLoai: Record<string, string> = {
  TIN_TUC: "Tin tức",
  GIO_TO: "Giỗ Tổ",
  HOP_HO: "Họp họ",
  THONG_BAO: "Thông báo",
};

export default async function TrangTinTuc() {
  const ds = await prisma.tinTuc
    .findMany({
      where: { trangThai: "HIEN" },
      orderBy: { createdAt: "desc" },
    })
    .catch(() => []);

  return (
    <div className="space-y-6">
      <h1 className="tieu-de-trang text-2xl font-bold text-toc">
        Tin tức &amp; Sự kiện dòng họ
      </h1>

      {ds.length === 0 ? (
        <p className="text-sm text-muc-nhat">Chưa có bài viết.</p>
      ) : (
        <div className="grid gap-4 sm:grid-cols-2">
          {ds.map((t) => (
            <Link
              key={t.id}
              href={`/tin-tuc/${t.slug}`}
              className="rounded-lg border border-dong/40 bg-giay-2 p-5 transition hover:border-dong hover:shadow"
            >
              <span className="text-xs font-medium uppercase text-dong">
                {nhanLoai[t.loai] || t.loai}
              </span>
              <h2 className="mt-1 font-semibold text-toc">{t.tieuDe}</h2>
              <p className="mt-2 line-clamp-2 text-sm text-muc-nhat">
                {t.noiDung}
              </p>
            </Link>
          ))}
        </div>
      )}
    </div>
  );
}
