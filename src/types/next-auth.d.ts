import type { VaiTro } from "@prisma/client";
import "next-auth";

declare module "next-auth" {
  interface User {
    vaiTro?: VaiTro;
  }
  interface Session {
    user: {
      id?: string;
      name?: string | null;
      email?: string | null;
      image?: string | null;
      vaiTro?: VaiTro;
    };
  }
}

declare module "next-auth/jwt" {
  interface JWT {
    vaiTro?: VaiTro;
    uid?: string;
  }
}
