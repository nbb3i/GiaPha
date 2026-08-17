import Link from "next/link";
import { prisma } from "@/lib/prisma";

export const dynamic = "force-dynamic";

async function layThongKe() {
  try {
    const [soThanhVien, soDoiRow, tinMoi] = await Promise.all([
      prisma.person.count({ where: { laDauRe: false } }),
      prisma.person.aggregate({ _max: { doi: true } }),
      prisma.tinTuc.findMany({
        where: { trangThai: "HIEN" },
        orderBy: { createdAt: "desc" },
        take: 3,
      }),
    ]);
    return { soThanhVien, soDoi: soDoiRow._max.doi ?? 0, tinMoi, loi: false };
  } catch {
    return { soThanhVien: 0, soDoi: 0, tinMoi: [], loi: true };
  }
}

export default async function TrangChu() {
  const { soThanhVien, soDoi, tinMoi, loi } = await layThongKe();

  return (
    <div className="space-y-12">
      {/* Hero */}
      <section className="rounded-lg bg-gradient-to-b from-toc to-toc-dark px-6 py-12 text-center text-giay shadow">
        <h1 className="tieu-de-trang text-3xl font-bold sm:text-4xl">
          Gia phả dòng họ Nguyễn Bá
        </h1>
        <p className="mx-auto mt-4 max-w-2xl text-giay/90">
          Nơi lưu giữ cội nguồn, ghi công tiên tổ và kết nối con cháu dòng họ
          Nguyễn Bá — xã Đại Lai, thành phố Bắc Ninh.
        </p>
        <div className="mt-6 flex flex-wrap justify-center gap-3">
          <Link
            href="/gia-pha"
            className="rounded bg-dong px-5 py-2.5 font-medium text-toc-dark transition hover:bg-dong-light"
          >
            Xem gia phả
          </Link>
          <Link
            href="/cay"
            className="rounded border border-dong px-5 py-2.5 font-medium text-giay transition hover:bg-toc-light"
          >
            Sơ đồ cây
          </Link>
        </div>
      </section>

      {loi && (
        <p className="rounded border border-amber-400 bg-amber-50 p-4 text-center text-sm text-amber-800">
          Chưa kết nối được cơ sở dữ liệu. Hãy cấu hình <code>DATABASE_URL</code>{" "}
          và chạy <code>npm run db:push &amp;&amp; npm run db:seed</code>.
        </p>
      )}

      {/* Thống kê */}
      <section className="grid grid-cols-2 gap-4 sm:grid-cols-3">
        <ThongKe so={soDoi} nhan="Đời" />
        <ThongKe so={soThanhVien} nhan="Thành viên" />
        <ThongKe so={tinMoi.length} nhan="Tin mới" />
      </section>

      {/* Tin mới */}
      <section>
        <h2 className="tieu-de-trang mb-4 text-xl font-bold text-toc">
          Tin tức &amp; Sự kiện
        </h2>
        {tinMoi.length === 0 ? (
          <p className="text-sm text-gray-500">Chưa có tin tức.</p>
        ) : (
          <ul className="space-y-3">
            {tinMoi.map((t) => (
              <li key={t.id}>
                <Link
                  href={`/tin-tuc/${t.slug}`}
                  className="block rounded border border-dong/20 bg-white p-4 transition hover:border-dong"
                >
                  <span className="text-xs uppercase text-dong">{t.loai}</span>
                  <p className="font-medium text-toc">{t.tieuDe}</p>
                </Link>
              </li>
            ))}
          </ul>
        )}
      </section>
    </div>
  );
}

function ThongKe({ so, nhan }: { so: number; nhan: string }) {
  return (
    <div className="rounded-lg border border-dong/20 bg-white p-6 text-center shadow-sm">
      <p className="text-3xl font-bold text-toc">{so}</p>
      <p className="mt-1 text-sm text-gray-500">{nhan}</p>
    </div>
  );
}
