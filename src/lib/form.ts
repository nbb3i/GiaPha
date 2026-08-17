/** Tiện ích đọc FormData an toàn cho Server Actions. */
import { boDau } from "@/lib/vi";

export function chuoi(fd: FormData, key: string): string | null {
  const v = fd.get(key);
  if (v == null) return null;
  const s = String(v).trim();
  return s === "" ? null : s;
}

export function so(fd: FormData, key: string): number | null {
  const v = chuoi(fd, key);
  if (v == null) return null;
  const n = parseInt(v, 10);
  return Number.isFinite(n) ? n : null;
}

export function coCheck(fd: FormData, key: string): boolean {
  const v = fd.get(key);
  return v === "on" || v === "true" || v === "1";
}

/** Chuyển tiếng Việt có dấu -> slug ascii. */
export function taoSlug(s: string): string {
  return boDau(s)
    .replace(/[^a-z0-9\s-]/g, "")
    .replace(/\s+/g, "-")
    .replace(/-+/g, "-")
    .replace(/^-|-$/g, "")
    .slice(0, 120);
}
