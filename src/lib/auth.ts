import type { NextAuthOptions } from "next-auth";
import CredentialsProvider from "next-auth/providers/credentials";
import bcrypt from "bcryptjs";
import { prisma } from "@/lib/prisma";
import type { VaiTro } from "@prisma/client";

export const authOptions: NextAuthOptions = {
  session: { strategy: "jwt" },
  pages: {
    signIn: "/admin/dang-nhap",
  },
  providers: [
    CredentialsProvider({
      name: "Tài khoản",
      credentials: {
        username: { label: "Tên đăng nhập", type: "text" },
        password: { label: "Mật khẩu", type: "password" },
      },
      async authorize(credentials) {
        if (!credentials?.username || !credentials?.password) return null;
        const user = await prisma.user.findUnique({
          where: { username: credentials.username },
        });
        if (!user) return null;
        const ok = await bcrypt.compare(credentials.password, user.passwordHash);
        if (!ok) return null;
        return {
          id: user.id,
          name: user.hoTen || user.username,
          vaiTro: user.vaiTro,
        };
      },
    }),
  ],
  callbacks: {
    async jwt({ token, user }) {
      if (user) {
        token.vaiTro = (user as { vaiTro?: VaiTro }).vaiTro;
        token.uid = (user as { id?: string }).id;
      }
      return token;
    },
    async session({ session, token }) {
      if (session.user) {
        (session.user as { vaiTro?: VaiTro }).vaiTro = token.vaiTro as VaiTro;
        (session.user as { id?: string }).id = token.uid as string;
      }
      return session;
    },
  },
};

/** Kiểm tra quyền: BIENTAP hoặc ADMIN được sửa; chỉ ADMIN được xoá/quản trị. */
export function coQuyenBienTap(vaiTro?: VaiTro | null) {
  return vaiTro === "BIENTAP" || vaiTro === "ADMIN";
}
export function coQuyenAdmin(vaiTro?: VaiTro | null) {
  return vaiTro === "ADMIN";
}
