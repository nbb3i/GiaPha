import { getServerSession } from "next-auth";
import { authOptions, coQuyenBienTap, coQuyenAdmin } from "@/lib/auth";

/** Yêu cầu quyền Biên tập trở lên (BIENTAP hoặc ADMIN). Ném lỗi nếu không đủ. */
export async function yeuCauBienTap() {
  const s = await getServerSession(authOptions);
  if (!s || !coQuyenBienTap(s.user.vaiTro)) {
    throw new Error("Bạn không có quyền thực hiện thao tác này.");
  }
  return s;
}

/** Yêu cầu quyền Admin. Ném lỗi nếu không đủ. */
export async function yeuCauAdmin() {
  const s = await getServerSession(authOptions);
  if (!s || !coQuyenAdmin(s.user.vaiTro)) {
    throw new Error("Chỉ Quản trị viên mới được thực hiện thao tác này.");
  }
  return s;
}
