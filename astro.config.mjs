import { defineConfig } from 'astro/config';
import tailwindcss from '@tailwindcss/vite';

export default defineConfig({
  site: 'https://davimmt.github.io',
  base: 'slova',

  vite: {
    plugins: [tailwindcss()],

    //server: {
    //  watch: {
    //    usePolling: true
    //  },
    //},
  },
});
