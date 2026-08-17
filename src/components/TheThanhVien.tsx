import Link from "next/link";
import type { Person } from "@prisma/client";

export default function TheThanhVien({ p }: { p: Person }) {
  return (
    <Link
      href={`/gia-pha/${p.id}`}
      className="flex items-center gap-3 rounded border border-dong/20 bg-white p-3 transition hover:border-dong hover:shadow"
    >
      <div className="flex h-10 w-10 shrink-0 items-center justify-center rounded-full bg-toc/10 text-toc">
        {p.avatarUrl ? (
          // eslint-disable-next-line @next/next/no-img-element
          <img
            src={p.avatarUrl}
            alt={p.hoTen}
            className="h-10 w-10 rounded-full object-cover"
          />
        ) : (
          <span className="text-sm font-bold">
            {p.hoTen.trim().split(" ").pop()?.charAt(0)}
          </span>
        )}
      </div>
      <div className="min-w-0">
        <p className="truncate font-medium text-toc">
          {p.hoTen}
          {p.tenTu ? (
            <span className="text-gray-400"> ({p.tenTu})</span>
          ) : null}
        </p>
        <p className="text-xs text-gray-500">
          Đời {p.doi}
          {p.chucTuoc ? ` · ${p.chucTuoc}` : ""}
          {p.ngayGio ? ` · Giỗ: ${p.ngayGio}` : ""}
        </p>
      </div>
    </Link>
  );
}
