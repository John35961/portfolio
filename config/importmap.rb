# Pin npm packages by running ./bin/importmap

pin 'application', preload: true
pin '@hotwired/stimulus-loading', to: 'stimulus-loading.js', preload: true
pin_all_from 'app/javascript/controllers', under: 'controllers'
pin_all_from 'app/javascript/plugins', under: 'plugins'

pin 'aos', to: 'https://ga.jspm.io/npm:aos@2.3.4/dist/aos.js'
pin '@hotwired/stimulus', to: 'https://ga.jspm.io/npm:@hotwired/stimulus@3.0.1/dist/stimulus.js'
pin 'photoswipe', to: 'https://cdn.jsdelivr.net/npm/photoswipe@5.4.4/dist/photoswipe-lightbox.esm.min.js'
pin 'gsap', to: 'https://ga.jspm.io/npm:gsap@3.11.1/index.js'
pin 'gsap/ScrollToPlugin', to: 'https://ga.jspm.io/npm:gsap@3.11.1/ScrollToPlugin.js'
pin "@hotwired/turbo-rails", to: "turbo.min.js"
