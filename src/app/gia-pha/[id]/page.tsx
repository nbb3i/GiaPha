import Link from "next/link";
import { notFound } from "next/navigation";
import { layChiTiet } from "@/lib/gia-pha";

export const dynamic = "force-dynamic";

const nhanTinhTrang: Record<string, string> = {
  SONG: "Còn sống",
  MAT: "Đã mất",
  KHONG_RO: "Không rõ",
};

export default async function ChiTietThanhVien({
  params,
}: {
  params: { id: string };
}) {
  const id = Number(params.id);
  if (!Number.isFinite(id)) notFound();
  const p = await layChiTiet(id).catch(() => null);
  if (!p) notFound();

  const chuCai = p.hoTen.trim().split(" ").pop()?.charAt(0) ?? "?";

  return (
    <article className="mx-auto max-w-3xl space-y-8">
      <nav className="font-sans text-sm text-muc-nhat">
        <Link href="/gia-pha" className="text-toc hover:underline">
          Gia phả
        </Link>{" "}
        / <span>Đời thứ {p.doi}</span> /{" "}
        <span className="text-muc">{p.hoTen}</span>
      </nav>

      {/* Hồ sơ */}
      <header className="khung relative grid grid-cols-1 gap-6 bg-giay-2 p-6 sm:grid-cols-[200px_1fr] sm:p-8">
        <span className="goc goc-tl" />
        <span className="goc goc-tr" />
        <span className="goc goc-bl" />
        <span className="goc goc-br" />

        {/* Chân dung */}
        <div className="mx-auto aspect-[3/4] w-44 sm:mx-0 sm:w-full">
          <div className="khung flex h-full flex-col items-center justify-center gap-2 bg-giay-3 text-muc-nhat">
            {p.anh ? (
              // eslint-disable-next-line @next/next/no-img-element
              <img
                src={p.anh}
                alt={p.hoTen}
                className="h-full w-full object-cover"
              />
            ) : (
              <>
                <span className="grid h-16 w-16 place-items-center rounded-full border-2 border-dong text-2xl text-toc">
                  {chuCai}
                </span>
                <span className="font-sans text-xs tracking-wide">
                  Chưa có ảnh
                </span>
              </>
            )}
          </div>
        </div>

        {/* Tên + huy hiệu */}
        <div>
          <span className="eyebrow">
            {p.chucVu || (p.doi === 1 ? "Thủy Tổ" : "Thành viên")} · Đời thứ{" "}
            {p.doi}
          </span>
          <h1 className="tieu-de-trang mt-1 text-3xl font-bold text-toc">
            {p.hoTen}
          </h1>
          {p.tenTu && (
            <p className="mt-1 font-sans text-sm text-muc-nhat">
              Tên tự: {p.tenTu}
            </p>
          )}
          {p.tenThuy && (
            <p className="font-sans text-sm text-muc-nhat">
              Tên thụy: {p.tenThuy}
            </p>
          )}

          <div className="mt-3 flex flex-wrap gap-2">
            {p.gioiTinh !== "KHONG_RO" && (
              <Badge son>{p.gioiTinh === "NAM" ? "Nam" : "Nữ"}</Badge>
            )}
            <Badge>{nhanTinhTrang[p.tinhTrang]}</Badge>
            {p.ngayGio && <Badge>Giỗ: {p.ngayGio}</Badge>}
          </div>

          {/* Thông tin có chấm nối */}
          <dl className="mt-5 grid grid-cols-1 gap-x-8 sm:grid-cols-2">
            <Hang nhan="Đời" gt={`Thứ ${p.doi}`} />
            <Hang nhan="Mã hiệu" gt={p.maHieu} />
            <Hang nhan="Ngày sinh" gt={p.ngaySinh} />
            <Hang nhan="Ngày mất" gt={p.ngayMat} />
            <Hang nhan="Hưởng thọ" gt={p.huongTho ? `${p.huongTho} tuổi` : null} />
            <Hang nhan="Nơi an táng" gt={p.moTang} />
          </dl>
        </div>
      </header>

      {p.noiDung && (
        <section className="khung relative bg-giay-2 p-6 sm:p-8">
          <span className="goc goc-tl" />
          <span className="goc goc-tr" />
          <span className="goc goc-bl" />
          <span className="goc goc-br" />
          <h2 className="eyebrow mb-3">Sự nghiệp · Công đức</h2>
          <p className="whitespace-pre-line font-serif text-lg leading-relaxed text-muc">
            {p.noiDung}
          </p>
        </section>
      )}

      {/* Quan hệ */}
      <section className="grid gap-4 sm:grid-cols-2 lg:grid-cols-4">
        <QuanHe tieuDe="Cha" ds={p.cha ? [p.cha] : []} />
        <QuanHe tieuDe="Mẹ" ds={p.me ? [p.me] : []} />
        <QuanHe tieuDe="Vợ / Chồng" ds={p.voChong} />
        <QuanHe tieuDe={`Con (${p.conTheoCha.length})`} ds={p.conTheoCha} />
      </section>
    </article>
  );
}

function Badge({
  children,
  son,
}: {
  children: React.ReactNode;
  son?: boolean;
}) {
  return (
    <span
      className={`rounded-full border px-3 py-1 font-sans text-xs tracking-wide ${
        son
          ? "border-toc bg-toc text-giay"
          : "border-dong/40 bg-giay text-muc"
      }`}
    >
      {children}
    </span>
  );
}

function Hang({ nhan, gt }: { nhan: string; gt?: string | null }) {
  return (
    <div className="hang-cham border-b border-dotted border-dong/40">
      <dt className="font-sans text-[0.78rem] text-muc-nhat">{nhan}</dt>
      <i className="dots" />
      <dd className="text-right text-sm text-muc">{gt || "—"}</dd>
    </div>
  );
}

function QuanHe({
  tieuDe,
  ds,
}: {
  tieuDe: string;
  ds: { id: number; hoTen: string }[];
}) {
  return (
    <div className="border border-dong/40 bg-giay-2 p-4">
      <h3 className="mb-2 font-sans text-[0.72rem] uppercase tracking-[0.16em] text-dong">
        {tieuDe}
      </h3>
      {ds.length === 0 ? (
        <p className="text-xs text-muc-nhat">—</p>
      ) : (
        <ul className="space-y-1">
          {ds.map((n) => (
            <li key={n.id}>
              <Link
                href={`/gia-pha/${n.id}`}
                className="font-serif text-toc hover:underline"
              >
                {n.hoTen}
              </Link>
            </li>
          ))}
        </ul>
      )}
    </div>
  );
}
