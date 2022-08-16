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
        'primary': '#1e293b', //primary
        'dark': '#111827', //dark
        'blue': '#3b82f6', //blue
        'light-blue': '#eff6ff', //light-blue
        'green': '#10b981', //green
        'light-green': '#ecfdf5', //light-green
        'yellow': '#eab308', //yellow-500
        'light-yellow': '#fefce8', //yellow-50
        'red': '#ef4444', //red-500
        'light-red': '#fef2f2', //red-50
        'gray': '#9ca3af', //gray-400
        'light-gray': '#f9fafb', //gray-50
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
