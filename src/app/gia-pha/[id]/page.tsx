import Link from "next/link";
import { notFound } from "next/navigation";
import { layChiTiet } from "@/lib/gia-pha";

export const dynamic = "force-dynamic";

export default async function ChiTietThanhVien({
  params,
}: {
  params: { id: string };
}) {
  const p = await layChiTiet(params.id).catch(() => null);
  if (!p) notFound();

  const voChong = [
    ...p.honNhanChong.map((m) => m.vo),
    ...p.honNhanVo.map((m) => m.chong),
  ];

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
          {p.avatarUrl ? (
            // eslint-disable-next-line @next/next/no-img-element
            <img
              src={p.avatarUrl}
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
            {p.chucTuoc ? ` · ${p.chucTuoc}` : ""}
          </p>
        </div>
      </header>

      {/* Thông tin */}
      <section className="grid gap-x-8 gap-y-3 rounded-lg bg-white p-6 shadow-sm sm:grid-cols-2">
        <Truong nhan="Giới tính" gt={p.gioiTinh === "NAM" ? "Nam" : "Nữ"} />
        <Truong nhan="Ngày sinh (ÂL)" gt={p.ngaySinhAm} />
        <Truong nhan="Ngày mất (ÂL)" gt={p.ngayMatAm} />
        <Truong nhan="Ngày giỗ" gt={p.ngayGio} />
        <Truong nhan="Nơi an táng" gt={p.noiAnTang} />
        <Truong nhan="Quê quán" gt={p.queQuan} />
        <Truong nhan="Nơi ở" gt={p.noiOHienTai} />
        <Truong nhan="Nghề nghiệp" gt={p.ngheNghiep} />
      </section>

      {p.tieuSu && (
        <Khoi tieuDe="Tiểu sử">
          <p className="whitespace-pre-line leading-relaxed">{p.tieuSu}</p>
        </Khoi>
      )}
      {p.congDuc && (
        <Khoi tieuDe="Công đức với dòng họ">
          <p className="whitespace-pre-line leading-relaxed">{p.congDuc}</p>
        </Khoi>
      )}

      {/* Quan hệ */}
      <section className="grid gap-4 sm:grid-cols-3">
        <QuanHe tieuDe="Cha" ds={p.parent ? [p.parent] : []} />
        <QuanHe tieuDe="Vợ / Chồng" ds={voChong} khongLink />
        <QuanHe tieuDe={`Con (${p.children.length})`} ds={p.children} />
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

function Khoi({
  tieuDe,
  children,
}: {
  tieuDe: string;
  children: React.ReactNode;
}) {
  return (
    <section className="rounded-lg bg-white p-6 shadow-sm">
      <h2 className="mb-2 font-semibold text-dong">{tieuDe}</h2>
      <div className="text-gray-700">{children}</div>
    </section>
  );
}

function QuanHe({
  tieuDe,
  ds,
  khongLink,
}: {
  tieuDe: string;
  ds: { id: string; hoTen: string }[];
  khongLink?: boolean;
}) {
  return (
    <div className="rounded-lg bg-white p-4 shadow-sm">
      <h3 className="mb-2 text-sm font-semibold text-toc">{tieuDe}</h3>
      {ds.length === 0 ? (
        <p className="text-xs text-gray-400">—</p>
      ) : (
        <ul className="space-y-1 text-sm">
          {ds.map((n) =>
            khongLink ? (
              <li key={n.id} className="text-gray-700">
                {n.hoTen}
              </li>
            ) : (
              <li key={n.id}>
                <Link
                  href={`/gia-pha/${n.id}`}
                  className="text-toc hover:underline"
                >
                  {n.hoTen}
                </Link>
              </li>
            ),
          )}
        </ul>
      )}
    </div>
  );
}
