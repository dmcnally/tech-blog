// tailwind.config.js
module.exports = {
  mode: 'jit',
  content: [
    './_includes/**/*.{html,md}',
    './_layouts/**/*.{html,md}',
    './_posts/*.{html,md}',
    './keys/*.{html,md}',
    './*.{html,md}'
  ],
  darkMode: 'media', // or 'media' or 'class'
  theme: {
    extend: {}
  },
  variants: {
    extend: {}
  },
  plugins: []
}
