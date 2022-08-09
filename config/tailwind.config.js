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
            transform: "scale(1)",
            opacity: "0"
          },
          "50%": {
            transform: "scale(3)",
            opacity: "100"
          },
          "100%": {
            transform: "scale(1)",
            opacity: "0"
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
