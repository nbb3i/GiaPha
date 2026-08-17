import { prisma } from "@/lib/prisma";
import type { Person } from "@prisma/client";

export type NodeCay = Person & { children: NodeCay[] };

/** Thành viên huyết thống (quanHe = CON) đang hiển thị. */
export async function layTatCaThanhVien() {
  return prisma.person.findMany({
    where: { quanHe: "CON", hienThi: true },
    orderBy: [{ doi: "asc" }, { thuTu: "asc" }],
  });
}

/** Dựng cây từ danh sách phẳng theo parentId (cha). */
export function dungCay(list: Person[]): NodeCay[] {
  const map = new Map<number, NodeCay>();
  const roots: NodeCay[] = [];
  for (const p of list) map.set(p.id, { ...p, children: [] });
  for (const p of list) {
    const node = map.get(p.id)!;
    if (p.parentId && map.has(p.parentId)) {
      map.get(p.parentId)!.children.push(node);
    } else {
      roots.push(node);
    }
  }
  const sapCon = (n: NodeCay) => {
    n.children.sort((a, b) => a.thuTu - b.thuTu);
    n.children.forEach(sapCon);
  };
  roots.forEach(sapCon);
  return roots;
}

/** Nhóm thành viên theo đời. */
export function nhomTheoDoi(list: Person[]) {
  const nhom = new Map<number, Person[]>();
  for (const p of list) {
    if (!nhom.has(p.doi)) nhom.set(p.doi, []);
    nhom.get(p.doi)!.push(p);
  }
  return [...nhom.entries()].sort((a, b) => a[0] - b[0]);
}

/** Chi tiết một người kèm cha, mẹ, con và vợ/chồng. */
export async function layChiTiet(id: number) {
  const p = await prisma.person.findUnique({
    where: { id },
    include: {
      cha: true,
      me: true,
      conTheoCha: { where: { quanHe: "CON" }, orderBy: { thuTu: "asc" } },
    },
  });
  if (!p) return null;

  // Vợ/chồng: các Person quanHe = VO_CHONG gắn với người này qua parentId
  const voChong = await prisma.person.findMany({
    where: { parentId: id, quanHe: "VO_CHONG" },
    orderBy: { thuTu: "asc" },
  });

  return { ...p, voChong };
}
