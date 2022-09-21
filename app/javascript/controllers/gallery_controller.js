import { Controller } from "@hotwired/stimulus"
import { gsap } from 'gsap'
import { ScrollToPlugin } from 'gsap/ScrollToPlugin'

// Connects to data-controller="gallery"
export default class extends Controller {
  static targets = ["gallery"]

  connect() {
    gsap.registerPlugin(ScrollToPlugin);
  }

  scrollToTop() {
    const options = {
      duration: 1,
      scrollTo: this.galleryTarget,
      ease: 'power2.inOut'
    };

    gsap.to(window, options);
  }
}
