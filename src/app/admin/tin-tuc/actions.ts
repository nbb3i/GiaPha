"use server";

import { revalidatePath } from "next/cache";
import { redirect } from "next/navigation";
import { prisma } from "@/lib/prisma";
import { yeuCauBienTap, yeuCauAdmin } from "@/lib/guard";
import { chuoi, coCheck, taoSlug } from "@/lib/form";
import type { LoaiTin } from "@prisma/client";

async function docForm(fd: FormData, boQuaId?: string) {
  const tieuDe = chuoi(fd, "tieuDe") ?? "(không tiêu đề)";
  let slug = chuoi(fd, "slug") || taoSlug(tieuDe);
  // đảm bảo slug duy nhất
  let n = 1;
  const goc = slug;
  while (true) {
    const trung = await prisma.tinTuc.findUnique({ where: { slug } });
    if (!trung || trung.id === boQuaId) break;
    slug = `${goc}-${n++}`;
  }
  return {
    tieuDe,
    slug,
    noiDung: chuoi(fd, "noiDung") ?? "",
    loai: (chuoi(fd, "loai") ?? "TIN_TUC") as LoaiTin,
    anhBia: chuoi(fd, "anhBia"),
    trangThai: (coCheck(fd, "hienThi") ? "HIEN" : "NHAP") as "HIEN" | "NHAP",
  };
}

export async function taoTin(fd: FormData) {
  const s = await yeuCauBienTap();
  const data = await docForm(fd);
  await prisma.tinTuc.create({
    data: { ...data, tacGiaId: s.user.id ?? null },
  });
  revalidatePath("/admin/tin-tuc");
  revalidatePath("/tin-tuc");
  redirect("/admin/tin-tuc");
}

export async function capNhatTin(id: string, fd: FormData) {
  await yeuCauBienTap();
  const data = await docForm(fd, id);
  await prisma.tinTuc.update({ where: { id }, data });
  revalidatePath("/admin/tin-tuc");
  revalidatePath("/tin-tuc");
  revalidatePath(`/tin-tuc/${data.slug}`);
  redirect("/admin/tin-tuc");
}

export async function xoaTin(id: string) {
  await yeuCauAdmin();
  await prisma.tinTuc.delete({ where: { id } });
  revalidatePath("/admin/tin-tuc");
  revalidatePath("/tin-tuc");
  redirect("/admin/tin-tuc");
}
