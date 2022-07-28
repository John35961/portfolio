import "controllers"
import PhotoSwipeLightbox from 'https://unpkg.com/photoswipe/dist/photoswipe-lightbox.esm.js'
import AOS from 'aos'
import barba from '@barba/core'
import { TimelineMax } from 'gsap'

AOS.init({
  once: true,
  offset: 50
})

const options = {
  gallery: '#gallery',
  children: 'a',
  pswpModule: () => import('https://unpkg.com/photoswipe'),
}

const lightbox = new PhotoSwipeLightbox(options);

lightbox.init();

const wipe = document.querySelector('.wipe-transition')

const TLAnim = new TimelineMax();

function delay(n) {
  return new Promise((done) => {
    setTimeout(() => {
      done();
    }, n);
  })
}

barba.init({

  sync: false,

  transitions: [{
    async leave() {
      const done = this.async();
      TLAnim.to(wipe, { bottom: '0%', ease: 'power2.out', duration: 0.55 });
      await delay(600);
      done();
    },
    enter() {
      window.scrollTo(0, 0);
      TLAnim
        .to(wipe, { bottom: '100%', ease: 'power2.in', duration: 0.55 })
        .set(wipe, { bottom: '-100%' })
    }
  }
  ]
});
