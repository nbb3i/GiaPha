import type { Config } from "tailwindcss";

const config: Config = {
  content: ["./src/**/*.{js,ts,jsx,tsx,mdx}"],
  theme: {
    extend: {
      colors: {
        // Tông màu truyền thống: đỏ đô + vàng đồng
        toc: {
          DEFAULT: "#7a1f1f",
          light: "#9c2b2b",
          dark: "#5c1616",
        },
        dong: {
          DEFAULT: "#b8860b",
          light: "#d4a017",
        },
        giay: "#faf6ee",
      },
      fontFamily: {
        serif: ["Georgia", "Cambria", "Times New Roman", "serif"],
      },
    },
  },
  plugins: [],
};

export default config;
