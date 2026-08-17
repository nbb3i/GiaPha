import { layTatCaThanhVien, dungCay, type NodeCay } from "@/lib/gia-pha";
import CayTuongTac, { type NodeMini } from "@/components/CayTuongTac";

export const dynamic = "force-dynamic";
export const metadata = { title: "Sơ đồ cây" };

function rutGon(n: NodeCay): NodeMini {
  return {
    id: n.id,
    hoTen: n.hoTen,
    doi: n.doi,
    gioiTinh: n.gioiTinh,
    children: n.children.map(rutGon),
  };
}

export default async function TrangCay() {
  const list = await layTatCaThanhVien().catch(() => []);
  const roots = dungCay(list).map(rutGon);

  return (
    <div className="space-y-4">
      <h1 className="tieu-de-trang text-2xl font-bold text-toc">
        Sơ đồ cây gia phả
      </h1>

      {roots.length === 0 ? (
        <p className="text-sm text-muc-nhat">Chưa có dữ liệu.</p>
      ) : (
        <CayTuongTac roots={roots} />
      )}
    </div>
  );
}
