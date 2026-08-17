import Link from "next/link";
import { notFound } from "next/navigation";
import { prisma } from "@/lib/prisma";

export const dynamic = "force-dynamic";

export default async function ChiTietTin({
  params,
}: {
  params: { slug: string };
}) {
  const t = await prisma.tinTuc
    .findUnique({ where: { slug: params.slug } })
    .catch(() => null);
  if (!t || t.trangThai !== "HIEN") notFound();

  return (
    <article className="mx-auto max-w-3xl space-y-4">
      <nav className="text-sm text-gray-500">
        <Link href="/tin-tuc" className="hover:text-toc">
          Tin tức
        </Link>{" "}
        / <span className="text-toc">{t.tieuDe}</span>
      </nav>
      <h1 className="tieu-de-trang text-3xl font-bold text-toc">{t.tieuDe}</h1>
      <p className="text-xs text-gray-400">
        {new Date(t.createdAt).toLocaleDateString("vi-VN")}
      </p>
      <div className="prose max-w-none whitespace-pre-line leading-relaxed text-gray-700">
        {t.noiDung}
      </div>
    </article>
  );
}
