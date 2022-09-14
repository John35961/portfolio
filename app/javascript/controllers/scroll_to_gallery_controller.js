import { Controller } from "@hotwired/stimulus"
import { gsap } from 'gsap'
import { ScrollToPlugin } from 'gsap/ScrollToPlugin'

// Connects to data-controller="scroll-to-gallery"
export default class extends Controller {
  static targets = ["gallery"]

  connect() {
    gsap.registerPlugin(ScrollToPlugin);
  }

  scroll() {
    const gallery = this.galleryTarget;

    const options = {
      duration: 1,
      scrollTo: gallery,
      ease: 'power2.inOut'
    };

    gsap.to(window, options);
  }
}
