import PhotoSwipeLightbox from 'photoswipe'

const options = {
  gallery: '#gallery',
  children: 'a',
  pswpModule: () => import('https://unpkg.com/photoswipe'),
}

const lightbox = new PhotoSwipeLightbox(options);

lightbox.init();

export { lightbox };
