/** Tiện ích xử lý tiếng Việt có dấu. */

/**
 * Bỏ dấu tiếng Việt + chuyển chữ thường, để tìm kiếm không phân biệt dấu.
 * Ví dụ: "Nguyễn Bá Bình" -> "nguyen ba binh".
 */
export function boDau(s: string): string {
  return (s || "")
    .normalize("NFD")
    .replace(/[\u0300-\u036f]/g, "") // bỏ dấu thanh + dấu phụ (mũ, móc...)
    .replace(/đ/g, "d")
    .replace(/Đ/g, "D")
    .toLowerCase()
    .trim();
}
