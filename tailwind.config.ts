import type { Config } from "tailwindcss";

const config: Config = {
  content: ["./src/**/*.{js,ts,jsx,tsx,mdx}"],
  theme: {
    extend: {
      colors: {
        // Sơn son thếp vàng trên giấy dó
        toc: { DEFAULT: "#7a1420", light: "#9c2b2b", dark: "#5c0f18" },
        dong: { DEFAULT: "#a97b12", light: "#c9a24a" },
        giay: { DEFAULT: "#f3ead4", "2": "#ece0c2", "3": "#e4d5b0" },
        muc: { DEFAULT: "#2b2016", nhat: "#6f5c45" },
      },
      fontFamily: {
        serif: ["Georgia", "Times New Roman", "Noto Serif", "serif"],
        sans: ["system-ui", "Segoe UI", "Roboto", "sans-serif"],
      },
    },
  },
  plugins: [],
};

export default config;
