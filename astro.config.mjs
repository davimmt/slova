import { defineConfig } from 'astro/config';
import tailwindcss from '@tailwindcss/vite';
import path from 'path';

export default defineConfig({
  site: 'https://davimmt.github.io',
  base: 'slova',

  vite: {
    plugins: [tailwindcss()],
  },
});
