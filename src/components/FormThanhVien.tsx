import type { Person } from "@prisma/client";

type NguoiChon = { id: number; hoTen: string; doi: number };

export default function FormThanhVien({
  nguoi,
  danhSach,
  action,
}: {
  nguoi?: Person | null;
  danhSach: NguoiChon[];
  action: (fd: FormData) => void;
}) {
  const opt = () =>
    danhSach.map((p) => (
      <option key={p.id} value={p.id}>
        {p.hoTen} (đời {p.doi}) — #{p.id}
      </option>
    ));

  return (
    <form action={action} className="space-y-5">
      <div className="grid gap-4 sm:grid-cols-2">
        <O label="Họ tên (tên húy) *">
          <input name="hoTen" required defaultValue={nguoi?.hoTen ?? ""} className={inp} />
        </O>
        <O label="Tên tự">
          <input name="tenTu" defaultValue={nguoi?.tenTu ?? ""} className={inp} />
        </O>
        <O label="Tên thụy / truy phong">
          <input name="tenThuy" defaultValue={nguoi?.tenThuy ?? ""} className={inp} />
        </O>
        <O label="Mã hiệu">
          <input name="maHieu" defaultValue={nguoi?.maHieu ?? ""} className={inp} />
        </O>
        <O label="Giới tính">
          <select name="gioiTinh" defaultValue={nguoi?.gioiTinh ?? "KHONG_RO"} className={inp}>
            <option value="NAM">Nam</option>
            <option value="NU">Nữ</option>
            <option value="KHONG_RO">Không rõ</option>
          </select>
        </O>
        <O label="Tình trạng">
          <select name="tinhTrang" defaultValue={nguoi?.tinhTrang ?? "KHONG_RO"} className={inp}>
            <option value="SONG">Còn sống</option>
            <option value="MAT">Đã mất</option>
            <option value="KHONG_RO">Không rõ</option>
          </select>
        </O>
        <O label="Quan hệ">
          <select name="quanHe" defaultValue={nguoi?.quanHe ?? "CON"} className={inp}>
            <option value="CON">Con cháu (huyết thống)</option>
            <option value="VO_CHONG">Vợ / Chồng (dâu/rể)</option>
            <option value="KHAC">Khác</option>
          </select>
        </O>
        <O label="Chức vụ / phẩm hàm">
          <input name="chucVu" defaultValue={nguoi?.chucVu ?? ""} className={inp} />
        </O>
        <O label="Đời thứ *">
          <input name="doi" type="number" min={1} required defaultValue={nguoi?.doi ?? 1} className={inp} />
        </O>
        <O label="Thứ tự (con/vợ thứ mấy)">
          <input name="thuTu" type="number" min={1} defaultValue={nguoi?.thuTu ?? 1} className={inp} />
        </O>
        <O label="Cha (hoặc người phối ngẫu)">
          <select name="parentId" defaultValue={nguoi?.parentId ?? ""} className={inp}>
            <option value="">— Không —</option>
            {opt()}
          </select>
        </O>
        <O label="Mẹ">
          <select name="motherId" defaultValue={nguoi?.motherId ?? ""} className={inp}>
            <option value="">— Không —</option>
            {opt()}
          </select>
        </O>
        <O label="Ngày sinh (chuỗi tự do)">
          <input name="ngaySinh" defaultValue={nguoi?.ngaySinh ?? ""} placeholder="vd 12/3 âm lịch" className={inp} />
        </O>
        <O label="Ngày mất">
          <input name="ngayMat" defaultValue={nguoi?.ngayMat ?? ""} className={inp} />
        </O>
        <O label="Ngày giỗ">
          <input name="ngayGio" defaultValue={nguoi?.ngayGio ?? ""} placeholder="vd 24/2" className={inp} />
        </O>
        <O label="Hưởng thọ (tuổi)">
          <input name="huongTho" type="number" min={0} defaultValue={nguoi?.huongTho ?? ""} className={inp} />
        </O>
        <O label="Nơi an táng">
          <input name="moTang" defaultValue={nguoi?.moTang ?? ""} className={inp} />
        </O>
        <O label="Ảnh chân dung (URL)">
          <input name="anh" defaultValue={nguoi?.anh ?? ""} placeholder="/uploads/... hoặc https://" className={inp} />
        </O>
      </div>

      <O label="Sự nghiệp · Công đức · Ghi chú">
        <textarea name="noiDung" rows={4} defaultValue={nguoi?.noiDung ?? ""} className={inp} />
      </O>

      <label className="flex items-center gap-2 text-sm">
        <input type="checkbox" name="hienThi" defaultChecked={nguoi?.hienThi ?? true} />
        Hiển thị công khai
      </label>

      <div className="flex gap-3">
        <button className="rounded bg-toc px-6 py-2 font-medium text-giay hover:bg-toc-light">
          Lưu
        </button>
        <a href="/admin/thanh-vien" className="rounded border border-gray-300 px-6 py-2 text-gray-600 hover:bg-gray-50">
          Huỷ
        </a>
      </div>
    </form>
  );
}

const inp =
  "w-full rounded border border-dong/30 px-3 py-2 text-sm focus:border-dong focus:outline-none";

function O({ label, children }: { label: string; children: React.ReactNode }) {
  return (
    <label className="block">
      <span className="mb-1 block text-sm text-gray-600">{label}</span>
      {children}
    </label>
  );
}
