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
