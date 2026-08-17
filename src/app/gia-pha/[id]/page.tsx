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

  return (
    <article className="mx-auto max-w-3xl space-y-8">
      <nav className="text-sm text-gray-500">
        <Link href="/gia-pha" className="hover:text-toc">
          Gia phả
        </Link>{" "}
        / <span className="text-toc">{p.hoTen}</span>
      </nav>

      {/* Đầu trang */}
      <header className="flex flex-col items-center gap-4 rounded-lg bg-white p-6 text-center shadow-sm sm:flex-row sm:text-left">
        <div className="flex h-24 w-24 shrink-0 items-center justify-center rounded-full bg-toc/10 text-3xl font-bold text-toc">
          {p.anh ? (
            // eslint-disable-next-line @next/next/no-img-element
            <img
              src={p.anh}
              alt={p.hoTen}
              className="h-24 w-24 rounded-full object-cover"
            />
          ) : (
            p.hoTen.trim().split(" ").pop()?.charAt(0)
          )}
        </div>
        <div>
          <h1 className="tieu-de-trang text-2xl font-bold text-toc">
            {p.hoTen}
          </h1>
          {p.tenTu && <p className="text-gray-500">Tên tự: {p.tenTu}</p>}
          <p className="mt-1 text-sm text-dong">
            Đời thứ {p.doi}
            {p.gioiTinh !== "KHONG_RO"
              ? ` · ${p.gioiTinh === "NAM" ? "Nam" : "Nữ"}`
              : ""}
            {p.chucVu ? ` · ${p.chucVu}` : ""}
          </p>
        </div>
      </header>

      {/* Thông tin */}
      <section className="grid gap-x-8 gap-y-3 rounded-lg bg-white p-6 shadow-sm sm:grid-cols-2">
        <Truong nhan="Tình trạng" gt={nhanTinhTrang[p.tinhTrang]} />
        <Truong nhan="Mã hiệu" gt={p.maHieu} />
        <Truong nhan="Tên thụy/truy phong" gt={p.tenThuy} />
        <Truong nhan="Ngày sinh" gt={p.ngaySinh} />
        <Truong nhan="Ngày mất" gt={p.ngayMat} />
        <Truong nhan="Ngày giỗ" gt={p.ngayGio} />
        <Truong nhan="Hưởng thọ" gt={p.huongTho ? `${p.huongTho} tuổi` : null} />
        <Truong nhan="Nơi an táng" gt={p.moTang} />
      </section>

      {p.noiDung && (
        <section className="rounded-lg bg-white p-6 shadow-sm">
          <h2 className="mb-2 font-semibold text-dong">
            Sự nghiệp · Công đức · Ghi chú
          </h2>
          <p className="whitespace-pre-line leading-relaxed text-gray-700">
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

function Truong({ nhan, gt }: { nhan: string; gt?: string | null }) {
  return (
    <div className="flex justify-between border-b border-gray-100 py-1 text-sm">
      <span className="text-gray-400">{nhan}</span>
      <span className="font-medium text-gray-700">{gt || "—"}</span>
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
    <div className="rounded-lg bg-white p-4 shadow-sm">
      <h3 className="mb-2 text-sm font-semibold text-toc">{tieuDe}</h3>
      {ds.length === 0 ? (
        <p className="text-xs text-gray-400">—</p>
      ) : (
        <ul className="space-y-1 text-sm">
          {ds.map((n) => (
            <li key={n.id}>
              <Link
                href={`/gia-pha/${n.id}`}
                className="text-toc hover:underline"
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
