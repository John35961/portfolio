import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="parallax"
export default class extends Controller {
  static targets = ["hero"]

  static values = {
    amplitude: Number,
    force: Boolean
  }

  connect() {
    const hero = this.heroTarget;
    const amplitude = this.amplitudeValue;
    const force = this.forceValue;
    window.addEventListener('scroll', function (e) {
      if (window.innerWidth < 1024 && !(force)) {
        hero.style.transform = `translate3d(0px, 0px, 0px)`;
      } else {
        let scrolled = window.pageYOffset;
        let rate = scrolled * (amplitude / 100);
        hero.style.transform = `translate3d(0px, ${rate}px, 0px)`;
      };
    })
  }
}
