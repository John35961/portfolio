import { Controller } from "@hotwired/stimulus"
export default class extends Controller {
  static targets = ["title", "item"]

  static values = {
    active: Boolean,
  }

  updateNavbar() {

    let title = this.titleTarget;
    let items = this.itemTargets;
    let itemIsActive = this.activeValue;
    let background = this.element;

    if (window.scrollY >= 500) {
      title.classList.add('text-light-blue')
      title.classList.remove('text-primary')
      background.classList.add('backdrop-blur-lg', 'bg-dark/90')
      items.forEach((item) => {
        if (!itemIsActive) {
          item.classList.add('text-light-blue')
          item.classList.remove('text-gray-400', 'text-primary')
        }
      })
    } else {
      title.classList.remove('text-light-blue')
      title.classList.add('text-primary')
      background.classList.remove('backdrop-blur-lg', 'bg-dark/90')
      items.forEach(item => {
        if (!itemIsActive) {
          item.classList.remove('text-light-blue')
          item.classList.add('text-gray-400', 'text-primary')
        }
      });
    }
  }
}
