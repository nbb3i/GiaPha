import Link from "next/link";
import { prisma } from "@/lib/prisma";

export const dynamic = "force-dynamic";

const nhanLoai: Record<string, string> = {
  TIN_TUC: "Tin tức",
  GIO_TO: "Giỗ Tổ",
  HOP_HO: "Họp họ",
  THONG_BAO: "Thông báo",
};

async function layThongKe() {
  try {
    const [tong, nam, nu, soDoi, tinMoi] = await Promise.all([
      prisma.person.count({ where: { quanHe: "CON" } }),
      prisma.person.count({ where: { gioiTinh: "NAM" } }),
      prisma.person.count({ where: { gioiTinh: "NU" } }),
      prisma.person.aggregate({ _max: { doi: true } }),
      prisma.tinTuc.findMany({
        where: { trangThai: "HIEN" },
        orderBy: { createdAt: "desc" },
        take: 2,
      }),
    ]);
    return { tong, nam, nu, soDoi: soDoi._max.doi ?? 0, tinMoi, loi: false };
  } catch {
    return { tong: 0, nam: 0, nu: 0, soDoi: 0, tinMoi: [], loi: true };
  }
}

export default async function TrangChu() {
  const { tong, nam, nu, soDoi, tinMoi, loi } = await layThongKe();

  return (
    <div className="space-y-12">
      {/* Bài vị */}
      <section className="khung relative grid grid-cols-1 items-center gap-6 bg-giay-2 px-6 py-10 sm:grid-cols-[auto_1fr_auto] sm:py-12">
        <span className="goc goc-tl" />
        <span className="goc goc-tr" />
        <span className="goc goc-bl" />
        <span className="goc goc-br" />
        <p className="cau-doi mx-auto hidden text-lg sm:block">
          Cây có gốc mới nở cành xanh ngọn
        </p>
        <div className="px-2 text-center">
          <span className="eyebrow">Gia phả dòng họ</span>
          <h1 className="tieu-de-trang mt-3 text-4xl font-bold tracking-[0.1em] text-toc sm:text-5xl">
            NGUYỄN BÁ
          </h1>
          <p className="mt-3 font-sans text-sm tracking-[0.12em] text-muc-nhat">
            Trung Thành — Đại Lai — Gia Bình — Bắc Ninh
          </p>
          <div className="mt-6 flex flex-wrap justify-center gap-3">
            <Link
              href="/gia-pha"
              className="rounded-sm border border-toc bg-toc px-6 py-2.5 font-sans text-sm tracking-wide text-giay transition hover:bg-toc-light"
            >
              Xem gia phả
            </Link>
            <Link
              href="/cay"
              className="rounded-sm border border-dong px-6 py-2.5 font-sans text-sm tracking-wide text-toc transition hover:bg-giay-3"
            >
              Sơ đồ cây
            </Link>
          </div>
        </div>
        <p className="cau-doi mx-auto hidden text-lg sm:block">
          Nước có nguồn mới bể rộng sông sâu
        </p>
      </section>

      {loi && (
        <p className="rounded border border-amber-400 bg-amber-50 p-4 text-center text-sm text-amber-800">
          Chưa kết nối được cơ sở dữ liệu. Cấu hình <code>DATABASE_URL</code> rồi
          chạy <code>npm run db:push &amp;&amp; npm run db:seed</code>.
        </p>
      )}

      {/* Thống kê khắc đồng */}
      <section className="grid grid-cols-2 gap-px border border-dong/40 bg-dong/40 sm:grid-cols-4">
        <ThongKe so={soDoi} nhan="Đời" />
        <ThongKe so={tong} nhan="Thành viên" />
        <ThongKe so={nam} nhan="Nam" />
        <ThongKe so={nu} nhan="Nữ" />
      </section>

      {/* Lời tựa */}
      <section className="khung relative bg-giay-2 px-6 py-8 text-center sm:px-10">
        <span className="goc goc-tl" />
        <span className="goc goc-tr" />
        <span className="goc goc-bl" />
        <span className="goc goc-br" />
        <p className="eyebrow mb-4">Lời tựa</p>
        <p className="mx-auto max-w-2xl font-serif text-lg italic leading-relaxed text-muc">
          “Con người có tổ có tông, như cây có cội như sông có nguồn.” Trang gia
          phả này lưu giữ cội nguồn, ghi công tiên tổ và kết nối con cháu dòng họ
          Nguyễn Bá qua chín đời, để đời sau biết ơn đời trước, cùng nhau gìn giữ
          gia phong.
        </p>
        <p className="mt-5 font-sans text-xs tracking-[0.14em] text-muc-nhat">
          — HỘI ĐỒNG GIA TỘC HỌ NGUYỄN BÁ
        </p>
      </section>

      {/* Tin tức */}
      <section>
        <h2 className="tieu-de-trang mb-2 text-center text-2xl font-bold text-toc">
          Tin tức &amp; Sự kiện
        </h2>
        <p className="chia mx-auto mb-6 max-w-xs">
          <span>❖</span>
        </p>
        {tinMoi.length === 0 ? (
          <p className="text-center text-sm text-muc-nhat">Chưa có tin tức.</p>
        ) : (
          <div className="grid gap-4 sm:grid-cols-2">
            {tinMoi.map((t) => (
              <Link
                key={t.id}
                href={`/tin-tuc/${t.slug}`}
                className="block border border-dong/40 border-t-[3px] border-t-dong bg-giay-2 p-5 transition hover:-translate-y-0.5 hover:shadow-md"
              >
                <span className="font-sans text-[0.68rem] uppercase tracking-[0.2em] text-dong">
                  {nhanLoai[t.loai] || t.loai}
                </span>
                <p className="mt-1 font-serif text-lg font-semibold text-toc">
                  {t.tieuDe}
                </p>
                <p className="mt-2 line-clamp-2 text-sm text-muc-nhat">
                  {t.noiDung}
                </p>
              </Link>
            ))}
          </div>
        )}
      </section>
    </div>
  );
}

function ThongKe({ so, nhan }: { so: number; nhan: string }) {
  return (
    <div className="bg-giay-2 px-2 py-6 text-center">
      <p className="font-serif text-3xl font-bold tabular-nums text-toc">{so}</p>
      <p className="mt-1 font-sans text-[0.72rem] uppercase tracking-[0.16em] text-muc-nhat">
        {nhan}
      </p>
    </div>
  );
}
