import type { TinTuc } from "@prisma/client";

export default function FormTinTuc({
  tin,
  action,
}: {
  tin?: TinTuc | null;
  action: (fd: FormData) => void;
}) {
  return (
    <form action={action} className="space-y-5">
      <label className="block">
        <span className="mb-1 block text-sm text-gray-600">Tiêu đề *</span>
        <input name="tieuDe" required defaultValue={tin?.tieuDe ?? ""} className={inp} />
      </label>

      <div className="grid gap-4 sm:grid-cols-2">
        <label className="block">
          <span className="mb-1 block text-sm text-gray-600">Loại</span>
          <select name="loai" defaultValue={tin?.loai ?? "TIN_TUC"} className={inp}>
            <option value="TIN_TUC">Tin tức</option>
            <option value="GIO_TO">Giỗ Tổ</option>
            <option value="HOP_HO">Họp họ</option>
            <option value="THONG_BAO">Thông báo</option>
          </select>
        </label>
        <label className="block">
          <span className="mb-1 block text-sm text-gray-600">
            Slug (để trống sẽ tự tạo)
          </span>
          <input name="slug" defaultValue={tin?.slug ?? ""} className={inp} />
        </label>
      </div>

      <label className="block">
        <span className="mb-1 block text-sm text-gray-600">Ảnh bìa (URL)</span>
        <input name="anhBia" defaultValue={tin?.anhBia ?? ""} className={inp} />
      </label>

      <label className="block">
        <span className="mb-1 block text-sm text-gray-600">Nội dung</span>
        <textarea name="noiDung" rows={10} defaultValue={tin?.noiDung ?? ""} className={inp} />
      </label>

      <label className="flex items-center gap-2 text-sm">
        <input
          type="checkbox"
          name="hienThi"
          defaultChecked={tin ? tin.trangThai === "HIEN" : true}
        />
        Hiển thị công khai
      </label>

      <div className="flex gap-3">
        <button className="rounded bg-toc px-6 py-2 font-medium text-giay hover:bg-toc-light">
          Lưu
        </button>
        <a href="/admin/tin-tuc" className="rounded border border-gray-300 px-6 py-2 text-gray-600 hover:bg-gray-50">
          Huỷ
        </a>
      </div>
    </form>
  );
}

const inp =
  "w-full rounded border border-dong/30 px-3 py-2 text-sm focus:border-dong focus:outline-none";
