// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "controllers"

import AOS from 'aos';

AOS.init({
  once: true,
  offset: 50
})

// import Swup from 'swup';

const swup = new Swup();
