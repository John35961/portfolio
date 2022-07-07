# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"

pin "aos", to: "https://ga.jspm.io/npm:aos@2.3.4/dist/aos.js"
pin "swup", to: "https://ga.jspm.io/npm:swup@2.0.16/lib/index.js"
pin "delegate-it", to: "https://ga.jspm.io/npm:delegate-it@3.0.1/index.js"
