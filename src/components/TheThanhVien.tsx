import Link from "next/link";
import type { Person } from "@prisma/client";

export default function TheThanhVien({ p }: { p: Person }) {
  return (
    <Link
      href={`/gia-pha/${p.id}`}
      className="flex items-center gap-3 rounded-sm border border-dong/40 bg-giay-2 p-3 transition hover:border-dong hover:shadow"
    >
      <div className="flex h-10 w-10 shrink-0 items-center justify-center rounded-full border border-dong/50 bg-giay-3 font-serif text-toc">
        {p.anh ? (
          // eslint-disable-next-line @next/next/no-img-element
          <img
            src={p.anh}
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
        <p className="truncate font-serif font-medium text-toc">
          {p.hoTen}
          {p.tenTu ? (
            <span className="text-muc-nhat"> ({p.tenTu})</span>
          ) : null}
        </p>
        <p className="font-sans text-xs text-muc-nhat">
          Đời {p.doi}
          {p.chucVu ? ` · ${p.chucVu}` : ""}
          {p.ngayGio ? ` · Giỗ: ${p.ngayGio}` : ""}
        </p>
      </div>
    </Link>
  );
}
