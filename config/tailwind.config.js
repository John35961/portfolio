const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {
      colors: {
        'primary': '#1e293b',
        'dark': '#111827',
        'blue': '#3b82f6',
        'light-blue': '#eff6ff',
        'green': '#10b981',
        'light-green': '#ecfdf5',
        'yellow': '#eab308',
        'light-yellow': '#fefce8',
        'red': '#ef4444',
        'light-red': '#fef2f2',
        'gray': '#9ca3af',
        'light-gray': '#f9fafb',
      },
      animation: {
        subtle: "subtle 15s infinite"
      },
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
        heading: ['Syne', 'sans-serif']
      },
      keyframes: {
        subtle: {
          "0%": {
            transform: "translateX(-2000px) scale(1)",
          },
          "50%": {
            transform: "scale(1.5)",
          },
          "100%": {
            transform: "translateX(2000px) scale(1)",
          }
        }
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
  ]
}
