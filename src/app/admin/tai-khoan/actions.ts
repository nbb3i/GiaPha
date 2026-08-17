"use server";

import { revalidatePath } from "next/cache";
import bcrypt from "bcryptjs";
import { prisma } from "@/lib/prisma";
import { yeuCauAdmin } from "@/lib/guard";
import { chuoi } from "@/lib/form";
import type { VaiTro } from "@prisma/client";

export async function taoTaiKhoan(fd: FormData) {
  await yeuCauAdmin();
  const username = chuoi(fd, "username");
  const password = chuoi(fd, "password");
  if (!username || !password) throw new Error("Thiếu tên đăng nhập hoặc mật khẩu.");
  const daCo = await prisma.user.findUnique({ where: { username } });
  if (daCo) throw new Error("Tên đăng nhập đã tồn tại.");
  await prisma.user.create({
    data: {
      username,
      hoTen: chuoi(fd, "hoTen"),
      passwordHash: await bcrypt.hash(password, 10),
      vaiTro: (chuoi(fd, "vaiTro") ?? "KHACH") as VaiTro,
    },
  });
  revalidatePath("/admin/tai-khoan");
}

export async function doiVaiTro(id: string, fd: FormData) {
  const s = await yeuCauAdmin();
  const vaiTro = (chuoi(fd, "vaiTro") ?? "KHACH") as VaiTro;
  // Không cho tự hạ quyền chính mình để tránh mất quyền admin cuối cùng
  if (s.user.id === id && vaiTro !== "ADMIN") {
    throw new Error("Không thể tự bỏ quyền Admin của chính mình.");
  }
  await prisma.user.update({ where: { id }, data: { vaiTro } });
  revalidatePath("/admin/tai-khoan");
}

export async function datLaiMatKhau(id: string, fd: FormData) {
  await yeuCauAdmin();
  const password = chuoi(fd, "password");
  if (!password || password.length < 6) {
    throw new Error("Mật khẩu mới tối thiểu 6 ký tự.");
  }
  await prisma.user.update({
    where: { id },
    data: { passwordHash: await bcrypt.hash(password, 10) },
  });
  revalidatePath("/admin/tai-khoan");
}

export async function xoaTaiKhoan(id: string) {
  const s = await yeuCauAdmin();
  if (s.user.id === id) throw new Error("Không thể tự xoá tài khoản đang đăng nhập.");
  await prisma.user.delete({ where: { id } });
  revalidatePath("/admin/tai-khoan");
}
