"use client";

import { useState } from "react";
import { signIn } from "next-auth/react";
import { useRouter } from "next/navigation";

export default function DangNhap() {
  const router = useRouter();
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [loi, setLoi] = useState("");
  const [dangGui, setDangGui] = useState(false);

  async function onSubmit(e: React.FormEvent) {
    e.preventDefault();
    setLoi("");
    setDangGui(true);
    const res = await signIn("credentials", {
      username,
      password,
      redirect: false,
    });
    setDangGui(false);
    if (res?.error) {
      setLoi("Sai tên đăng nhập hoặc mật khẩu.");
    } else {
      router.push("/admin");
      router.refresh();
    }
  }

  return (
    <div className="mx-auto max-w-sm">
      <h1 className="tieu-de-trang mb-6 text-center text-2xl font-bold text-toc">
        Đăng nhập quản trị
      </h1>
      <form
        onSubmit={onSubmit}
        className="space-y-4 rounded-lg border border-dong/20 bg-white p-6 shadow-sm"
      >
        {loi && (
          <p className="rounded bg-red-50 p-2 text-sm text-red-600">{loi}</p>
        )}
        <div>
          <label className="mb-1 block text-sm text-gray-600">
            Tên đăng nhập
          </label>
          <input
            value={username}
            onChange={(e) => setUsername(e.target.value)}
            className="w-full rounded border border-dong/30 px-3 py-2 focus:border-dong focus:outline-none"
            required
          />
        </div>
        <div>
          <label className="mb-1 block text-sm text-gray-600">Mật khẩu</label>
          <input
            type="password"
            value={password}
            onChange={(e) => setPassword(e.target.value)}
            className="w-full rounded border border-dong/30 px-3 py-2 focus:border-dong focus:outline-none"
            required
          />
        </div>
        <button
          disabled={dangGui}
          className="w-full rounded bg-toc py-2 font-medium text-giay transition hover:bg-toc-light disabled:opacity-50"
        >
          {dangGui ? "Đang đăng nhập…" : "Đăng nhập"}
        </button>
      </form>
    </div>
  );
}
