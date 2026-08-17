import type { Metadata } from "next";
import "./globals.css";
import Header from "@/components/Header";
import Footer from "@/components/Footer";
import Providers from "@/components/Providers";

export const metadata: Metadata = {
  title: {
    default: "Gia phả dòng họ Nguyễn Bá",
    template: "%s — Gia phả Nguyễn Bá",
  },
  description:
    "Website gia phả dòng họ Nguyễn Bá, xã Đại Lai, TP. Bắc Ninh. Lưu giữ cội nguồn, kết nối con cháu.",
};

export default function RootLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <html lang="vi">
      <body className="flex min-h-screen flex-col">
        <Providers>
          <Header />
          <main className="mx-auto w-full max-w-6xl flex-1 px-4 py-8">
            {children}
          </main>
          <Footer />
        </Providers>
      </body>
    </html>
  );
}
