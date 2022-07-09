import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  connect() {
  }
  updateNavbarPadding() {
    if (window.scrollY >= 500) {
      this.element.classList.remove("pt-5")
      this.element.classList.remove("lg:pt-10")
      this.element.classList.add("pt-3")
      this.element.classList.add("lg:pt-5")
      this.element.classList.add("backdrop-blur-lg")
      this.element.classList.add("bg-white/75")
    } else {
      this.element.classList.add("pt-5")
      this.element.classList.add("lg:pt-10")
      this.element.classList.remove("pt-3")
      this.element.classList.remove("lg:pt-5")
      this.element.classList.remove("backdrop-blur-lg")
      this.element.classList.remove("bg-white/75")
    }
  }
}
