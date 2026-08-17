import Link from "next/link";
import { layTatCaThanhVien, dungCay, type NodeCay } from "@/lib/gia-pha";

export const dynamic = "force-dynamic";
export const metadata = { title: "Sơ đồ cây" };

export default async function TrangCay() {
  const list = await layTatCaThanhVien().catch(() => []);
  const roots = dungCay(list);

  return (
    <div className="space-y-6">
      <h1 className="tieu-de-trang text-2xl font-bold text-toc">
        Sơ đồ cây gia phả
      </h1>
      <p className="text-sm text-gray-500">
        Nhấp vào tên để xem chi tiết. Kéo ngang để xem các nhánh rộng.
      </p>

      {roots.length === 0 ? (
        <p className="text-sm text-gray-500">Chưa có dữ liệu.</p>
      ) : (
        <div className="overflow-x-auto rounded-lg border border-dong/20 bg-white p-6">
          <ul className="cay-goc">
            {roots.map((n) => (
              <NutCay key={n.id} node={n} />
            ))}
          </ul>
        </div>
      )}
    </div>
  );
}

function NutCay({ node }: { node: NodeCay }) {
  return (
    <li className="relative ml-4 border-l border-dong/40 pl-4">
      <span className="absolute left-0 top-4 h-px w-4 bg-dong/40" />
      <Link
        href={`/gia-pha/${node.id}`}
        className="inline-block rounded border border-dong/30 bg-giay px-3 py-1.5 text-sm text-toc transition hover:border-dong hover:bg-white"
      >
        {node.hoTen}
        <span className="ml-1 text-xs text-gray-400">· đời {node.doi}</span>
      </Link>
      {node.children.length > 0 && (
        <ul className="mt-2">
          {node.children.map((c) => (
            <NutCay key={c.id} node={c} />
          ))}
        </ul>
      )}
    </li>
  );
}
