"use client";

import { signOut } from "next-auth/react";

export default function DangXuat() {
  return (
    <button
      onClick={() => signOut({ callbackUrl: "/" })}
      className="rounded border border-toc px-4 py-1.5 text-sm text-toc transition hover:bg-toc hover:text-giay"
    >
      Đăng xuất
    </button>
  );
}
