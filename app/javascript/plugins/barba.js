import barba from '@barba/core'
import { TimelineMax } from 'gsap'
import { lightbox } from './photoswipe';

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
      TLAnim.to(wipe, { bottom: '0%', ease: 'power2.out', duration: 0.5 });
      await delay(800);
      done();
    },
    enter() {
      window.scrollTo(0, 0);
      TLAnim
        .to(wipe, { bottom: '100%', ease: 'power2.in', duration: 0.5 })
        .set(wipe, { bottom: '-100%' })
    }
  }
  ],

  views: [{
    namespace: 'main',
    afterEnter() {
      lightbox.init();
    }
  }]

});
