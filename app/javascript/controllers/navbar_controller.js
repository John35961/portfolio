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
      title.classList.add('text-blue-50')
      title.classList.remove('text-slate-800')
      background.classList.add('backdrop-blur-lg', 'bg-slate-900/90')
      items.forEach((item) => {
        if (!itemIsActive) {
          item.classList.add('text-blue-50')
          item.classList.remove('text-gray-400', 'text-slate-800')
        }
      })
    } else {
      title.classList.remove('text-blue-50')
      title.classList.add('text-slate-800')
      background.classList.remove('backdrop-blur-lg', 'bg-slate-900/90')
      items.forEach(item => {
        if (!itemIsActive) {
          item.classList.remove('text-blue-50')
          item.classList.add('text-gray-400', 'text-slate-800')
        }
      });
    }
  }
}
