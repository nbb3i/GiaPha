#!/usr/bin/env bash
#
# deploy.sh — Triển khai website gia phả Nguyễn Bá lên VPS (Docker).
#
# Cách dùng trên VPS Ubuntu (đã cài Docker + Docker Compose):
#   chmod +x deploy.sh
#   ./deploy.sh                       # lần đầu: tạo .env, build, chạy, seed
#   SITE_URL=https://giapha.abc.vn ./deploy.sh   # chỉ định URL truy cập
#   SEED=0 ./deploy.sh                # deploy lại KHÔNG seed (giữ dữ liệu)
#
set -euo pipefail

cd "$(dirname "$0")"

say()  { printf "\033[1;33m▶ %s\033[0m\n" "$*"; }
ok()   { printf "\033[1;32m✓ %s\033[0m\n" "$*"; }
err()  { printf "\033[1;31m✗ %s\033[0m\n" "$*" >&2; }

# 0) Kiểm tra Docker
if ! command -v docker >/dev/null 2>&1; then
  err "Chưa có Docker. Cài theo hướng dẫn: docs/HD-TRIEN-KHAI.md (mục 1)."
  exit 1
fi
if docker compose version >/dev/null 2>&1; then
  DC="docker compose"
elif command -v docker-compose >/dev/null 2>&1; then
  DC="docker-compose"
else
  err "Chưa có Docker Compose."
  exit 1
fi
ok "Docker sẵn sàng ($DC)"

# 1) Tạo .env nếu chưa có
if [ ! -f .env ]; then
  say "Chưa có .env — đang tạo mới..."
  SECRET="$(openssl rand -base64 32 2>/dev/null || head -c 32 /dev/urandom | base64)"
  URL="${SITE_URL:-http://localhost:3000}"
  # Mật khẩu admin ngẫu nhiên nếu không truyền vào
  APASS="${ADMIN_PASSWORD:-$(openssl rand -base64 12 2>/dev/null | tr -d '/+=' | cut -c1-12)}"
  cat > .env <<EOF
DATABASE_URL="postgresql://giapha:giapha_password@db:5432/giapha?schema=public"
NEXTAUTH_SECRET="${SECRET}"
NEXTAUTH_URL="${URL}"
ADMIN_USERNAME="${ADMIN_USERNAME:-admin}"
ADMIN_PASSWORD="${APASS}"
EOF
  ok "Đã tạo .env (NEXTAUTH_URL=${URL})"
  echo "   → Tài khoản admin: ${ADMIN_USERNAME:-admin} / ${APASS}"
  echo "   → LƯU LẠI mật khẩu này. Sửa NEXTAUTH_URL trong .env khi có domain."
else
  ok "Đã có .env (giữ nguyên)"
fi

# 2) Build & chạy
say "Build và khởi động (app + PostgreSQL)..."
$DC up -d --build

# 3) Chờ database sẵn sàng
say "Chờ PostgreSQL sẵn sàng..."
for i in $(seq 1 30); do
  if $DC exec -T db pg_isready -U giapha >/dev/null 2>&1; then
    ok "PostgreSQL sẵn sàng"; break
  fi
  sleep 2
  [ "$i" = "30" ] && { err "PostgreSQL không phản hồi"; exit 1; }
done

# 4) Tạo bảng (idempotent) — chạy qua service tooling "migrate"
say "Đồng bộ schema cơ sở dữ liệu..."
$DC run --rm migrate npx prisma db push
ok "Schema đã đồng bộ"

# 5) Seed dữ liệu (mặc định có; đặt SEED=0 để bỏ qua khi deploy lại)
if [ "${SEED:-1}" = "1" ]; then
  say "Nạp dữ liệu mẫu (đặt SEED=0 để bỏ qua)..."
  $DC run --rm migrate npm run db:seed
  ok "Đã nạp dữ liệu mẫu"
else
  ok "Bỏ qua seed (SEED=0) — giữ nguyên dữ liệu hiện có"
fi

echo
ok "HOÀN TẤT! Website đang chạy ở cổng 3000."
echo "   → Truy cập:  ${SITE_URL:-http://<IP-VPS>:3000}"
echo "   → Quản trị:  ${SITE_URL:-http://<IP-VPS>:3000}/admin"
echo "   → Bước tiếp (khuyến nghị): đặt Nginx + SSL — xem docs/HD-TRIEN-KHAI.md mục 4-5."
