"use server";

import { revalidatePath } from "next/cache";
import { redirect } from "next/navigation";
import { prisma } from "@/lib/prisma";
import { yeuCauBienTap, yeuCauAdmin } from "@/lib/guard";
import { chuoi, so, coCheck } from "@/lib/form";
import type { GioiTinh, QuanHe, TinhTrang } from "@prisma/client";

function docForm(fd: FormData) {
  return {
    hoTen: chuoi(fd, "hoTen") ?? "(chưa rõ)",
    gioiTinh: (chuoi(fd, "gioiTinh") ?? "KHONG_RO") as GioiTinh,
    quanHe: (chuoi(fd, "quanHe") ?? "CON") as QuanHe,
    tinhTrang: (chuoi(fd, "tinhTrang") ?? "KHONG_RO") as TinhTrang,
    doi: so(fd, "doi") ?? 1,
    thuTu: so(fd, "thuTu") ?? 1,
    parentId: so(fd, "parentId"),
    motherId: so(fd, "motherId"),
    maHieu: chuoi(fd, "maHieu"),
    tenTu: chuoi(fd, "tenTu"),
    tenThuy: chuoi(fd, "tenThuy"),
    chucVu: chuoi(fd, "chucVu"),
    ngaySinh: chuoi(fd, "ngaySinh"),
    ngayMat: chuoi(fd, "ngayMat"),
    ngayGio: chuoi(fd, "ngayGio"),
    huongTho: so(fd, "huongTho"),
    moTang: chuoi(fd, "moTang"),
    noiDung: chuoi(fd, "noiDung"),
    anh: chuoi(fd, "anh"),
    hienThi: coCheck(fd, "hienThi"),
  };
}

export async function taoThanhVien(fd: FormData) {
  await yeuCauBienTap();
  const max = await prisma.person.aggregate({ _max: { id: true } });
  const id = (max._max.id ?? 0) + 1;
  await prisma.person.create({ data: { id, ...docForm(fd) } });
  revalidatePath("/admin/thanh-vien");
  revalidatePath("/gia-pha");
  revalidatePath("/cay");
  redirect("/admin/thanh-vien");
}

export async function capNhatThanhVien(id: number, fd: FormData) {
  await yeuCauBienTap();
  const data = docForm(fd);
  // Không cho tự làm cha/mẹ của chính mình
  if (data.parentId === id) data.parentId = null;
  if (data.motherId === id) data.motherId = null;
  await prisma.person.update({ where: { id }, data });
  revalidatePath("/admin/thanh-vien");
  revalidatePath(`/gia-pha/${id}`);
  revalidatePath("/cay");
  redirect("/admin/thanh-vien");
}

export async function xoaThanhVien(id: number) {
  await yeuCauAdmin();
  // Gỡ liên kết con để tránh mồ côi khoá ngoại (onDelete: SetNull đã lo,
  // nhưng ta chủ động để rõ ràng).
  await prisma.person.updateMany({
    where: { parentId: id },
    data: { parentId: null },
  });
  await prisma.person.updateMany({
    where: { motherId: id },
    data: { motherId: null },
  });
  await prisma.person.delete({ where: { id } });
  revalidatePath("/admin/thanh-vien");
  revalidatePath("/gia-pha");
  revalidatePath("/cay");
  redirect("/admin/thanh-vien");
}
