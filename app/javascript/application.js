import "@hotwired/turbo-rails"
import "controllers"
import PhotoSwipeLightbox from 'https://unpkg.com/photoswipe/dist/photoswipe-lightbox.esm.js'
import AOS from 'aos'

AOS.init({
  once: true,
  offset: 50
})

const lightbox = new PhotoSwipeLightbox({
  gallery: '#gallery',
  children: 'a',
  pswpModule: () => import('https://unpkg.com/photoswipe'),
});

lightbox.init();
