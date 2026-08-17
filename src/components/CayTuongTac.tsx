"use client";

import Link from "next/link";
import { useRef, useState } from "react";

export type NodeMini = {
  id: number;
  hoTen: string;
  doi: number;
  gioiTinh: string;
  children: NodeMini[];
};

export default function CayTuongTac({ roots }: { roots: NodeMini[] }) {
  const [scale, setScale] = useState(1);
  const [pos, setPos] = useState({ x: 0, y: 0 });
  const keo = useRef<{ dragging: boolean; x: number; y: number }>({
    dragging: false,
    x: 0,
    y: 0,
  });

  function onWheel(e: React.WheelEvent) {
    e.preventDefault();
    const delta = e.deltaY < 0 ? 0.1 : -0.1;
    setScale((s) => Math.min(2.5, Math.max(0.3, +(s + delta).toFixed(2))));
  }
  function onDown(e: React.MouseEvent) {
    keo.current = { dragging: true, x: e.clientX - pos.x, y: e.clientY - pos.y };
  }
  function onMove(e: React.MouseEvent) {
    if (!keo.current.dragging) return;
    setPos({ x: e.clientX - keo.current.x, y: e.clientY - keo.current.y });
  }
  function onUp() {
    keo.current.dragging = false;
  }
  function reset() {
    setScale(1);
    setPos({ x: 0, y: 0 });
  }

  return (
    <div className="relative">
      {/* Điều khiển */}
      <div className="absolute right-3 top-3 z-10 flex gap-1">
        <Nut onClick={() => setScale((s) => Math.min(2.5, +(s + 0.1).toFixed(2)))}>＋</Nut>
        <Nut onClick={() => setScale((s) => Math.max(0.3, +(s - 0.1).toFixed(2)))}>－</Nut>
        <Nut onClick={reset}>⟲</Nut>
      </div>

      <div
        className="h-[70vh] cursor-grab overflow-hidden rounded-lg border border-dong/40 bg-giay-2 active:cursor-grabbing"
        onWheel={onWheel}
        onMouseDown={onDown}
        onMouseMove={onMove}
        onMouseUp={onUp}
        onMouseLeave={onUp}
      >
        <div
          style={{
            transform: `translate(${pos.x}px, ${pos.y}px) scale(${scale})`,
            transformOrigin: "top left",
          }}
          className="inline-block p-8"
        >
          <ul>
            {roots.map((n) => (
              <Nut2 key={n.id} node={n} />
            ))}
          </ul>
        </div>
      </div>
      <p className="mt-2 text-center text-xs text-muc-nhat">
        Cuộn chuột để phóng to/thu nhỏ · Kéo để di chuyển · Nhấp tên để xem chi tiết
      </p>
    </div>
  );
}

function Nut({
  children,
  onClick,
}: {
  children: React.ReactNode;
  onClick: () => void;
}) {
  return (
    <button
      onClick={onClick}
      className="flex h-8 w-8 items-center justify-center rounded bg-toc text-lg text-giay shadow hover:bg-toc-light"
    >
      {children}
    </button>
  );
}

function Nut2({ node }: { node: NodeMini }) {
  return (
    <li className="relative ml-4 border-l border-dong/40 pl-4">
      <span className="absolute left-0 top-4 h-px w-4 bg-dong/40" />
      <Link
        href={`/gia-pha/${node.id}`}
        className={`inline-block rounded border px-3 py-1.5 text-sm transition hover:bg-giay-2 ${
          node.gioiTinh === "NU"
            ? "border-rose-300 bg-rose-50 text-rose-800"
            : "border-dong/40 bg-giay text-toc"
        }`}
      >
        {node.hoTen}
        <span className="ml-1 text-xs text-muc-nhat">· đời {node.doi}</span>
      </Link>
      {node.children.length > 0 && (
        <ul className="mt-2">
          {node.children.map((c) => (
            <Nut2 key={c.id} node={c} />
          ))}
        </ul>
      )}
    </li>
  );
}
