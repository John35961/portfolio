import PhotoSwipeLightbox from 'https://unpkg.com/photoswipe/dist/photoswipe-lightbox.esm.js'

const options = {
  gallery: '#gallery',
  children: 'a',
  pswpModule: () => import('https://unpkg.com/photoswipe'),
}

const lightbox = new PhotoSwipeLightbox(options);

lightbox.init();

export { lightbox }
