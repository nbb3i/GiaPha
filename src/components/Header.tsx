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
    <header className="border-b-2 border-dong/60 bg-toc text-giay shadow-md">
      <div className="mx-auto max-w-6xl px-4">
        <div className="relative flex flex-col items-center py-5 text-center">
          <span className="trien absolute right-2 top-4 h-11 w-11 text-xl sm:right-4">
            阮
          </span>
          <p className="eyebrow !text-dong-light">Gia phả dòng họ</p>
          <Link
            href="/"
            className="tieu-de-trang mt-1 text-3xl font-bold tracking-[0.12em] sm:text-4xl"
          >
            NGUYỄN BÁ
          </Link>
          <p className="mt-1 font-sans text-xs tracking-[0.15em] text-giay/75">
            Trung Thành · Đại Lai · Bắc Ninh
          </p>
        </div>
        <nav className="flex flex-wrap justify-center gap-1 border-t border-dong/40 py-2 font-sans text-sm">
          {menu.map((m) => (
            <Link
              key={m.href}
              href={m.href}
              className="rounded-sm px-3 py-1.5 tracking-wide transition hover:bg-toc-light"
            >
              {m.label}
            </Link>
          ))}
          <Link
            href="/admin"
            className="rounded-sm bg-dong px-3 py-1.5 font-medium tracking-wide text-toc-dark transition hover:bg-dong-light"
          >
            Quản trị
          </Link>
        </nav>
      </div>
    </header>
  );
}
