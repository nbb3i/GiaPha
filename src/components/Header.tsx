import Link from "next/link";

const menu = [
  { href: "/", label: "Trang chủ" },
  { href: "/gia-pha", label: "Gia phả" },
  { href: "/cay", label: "Sơ đồ cây" },
  { href: "/lich-gio", label: "Lịch giỗ" },
  { href: "/tin-tuc", label: "Tin tức" },
];

export default function Header() {
  return (
    <header className="bg-toc text-giay shadow-md">
      <div className="mx-auto max-w-6xl px-4">
        <div className="flex flex-col items-center py-4 text-center">
          <p className="text-sm uppercase tracking-widest text-dong-light">
            Gia phả dòng họ
          </p>
          <Link
            href="/"
            className="tieu-de-trang text-2xl font-bold sm:text-3xl"
          >
            NGUYỄN BÁ
          </Link>
          <p className="text-xs text-giay/80">Xã Đại Lai — TP. Bắc Ninh</p>
        </div>
        <nav className="flex flex-wrap justify-center gap-1 border-t border-dong/40 py-2 text-sm">
          {menu.map((m) => (
            <Link
              key={m.href}
              href={m.href}
              className="rounded px-3 py-1.5 transition hover:bg-toc-light"
            >
              {m.label}
            </Link>
          ))}
          <Link
            href="/admin"
            className="rounded bg-dong px-3 py-1.5 font-medium text-toc-dark transition hover:bg-dong-light"
          >
            Quản trị
          </Link>
        </nav>
      </div>
    </header>
  );
}
