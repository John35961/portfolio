import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="parallax"
export default class extends Controller {
  static targets = ["hero"]

  connect() {
    const hero = this.heroTarget;
    window.addEventListener('scroll', function (e) {
      if (window.innerWidth < 1024) {
        hero.style.transform = `translate3d(0px, 0px, 0px)`;
      } else {
        let scrolled = window.pageYOffset;
        let rate = scrolled * 0.75;
        hero.style.transform = `translate3d(0px, ${rate}px, 0px)`;
      };
    })
  }
}
