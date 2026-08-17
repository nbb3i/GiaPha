import { layTatCaThanhVien, nhomTheoDoi } from "@/lib/gia-pha";
import { boDau } from "@/lib/vi";
import TheThanhVien from "@/components/TheThanhVien";

export const dynamic = "force-dynamic";
export const metadata = { title: "Danh sách theo đời" };

export default async function TrangGiaPha({
  searchParams,
}: {
  searchParams: { q?: string };
}) {
  const q = boDau(searchParams.q || "");
  let list = await layTatCaThanhVien().catch(() => []);
  if (q) {
    // Tìm không phân biệt dấu, trên nhiều loại tên
    list = list.filter((p) =>
      [p.hoTen, p.tenTu, p.tenThuy, p.chucVu, p.maHieu]
        .map((x) => boDau(x || ""))
        .some((x) => x.includes(q)),
    );
  }
  const theoDoi = nhomTheoDoi(list);

  return (
    <div className="space-y-8">
      <div className="flex flex-col gap-4 sm:flex-row sm:items-center sm:justify-between">
        <h1 className="tieu-de-trang text-2xl font-bold text-toc">
          Gia phả theo đời
        </h1>
        <form className="flex gap-2">
          <input
            name="q"
            defaultValue={searchParams.q || ""}
            placeholder="Tìm theo tên…"
            className="rounded border border-dong/40 px-3 py-1.5 text-sm focus:border-dong focus:outline-none"
          />
          <button className="rounded bg-toc px-4 py-1.5 text-sm text-giay hover:bg-toc-light">
            Tìm
          </button>
        </form>
      </div>

      {theoDoi.length === 0 ? (
        <p className="text-sm text-muc-nhat">
          Không có dữ liệu{q ? " phù hợp" : ""}.
        </p>
      ) : (
        theoDoi.map(([doi, ds]) => (
          <section key={doi}>
            <h2 className="mb-3 border-b border-dong/40 pb-1 text-lg font-semibold text-dong">
              Đời thứ {doi}{" "}
              <span className="text-sm font-normal text-muc-nhat">
                ({ds.length} người)
              </span>
            </h2>
            <div className="grid gap-3 sm:grid-cols-2 lg:grid-cols-3">
              {ds.map((p) => (
                <TheThanhVien key={p.id} p={p} />
              ))}
            </div>
          </section>
        ))
      )}
    </div>
  );
}
