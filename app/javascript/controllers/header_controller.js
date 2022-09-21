import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="header"
export default class extends Controller {
  static targets = ["title", "item"]

  static values = {
    active: Boolean,
  }

  connect() {
    const internalLinks = Array.prototype.slice.call(document.querySelectorAll('a'))
      .filter(link => link.hostname === window.location.hostname);

    internalLinks.forEach((link) => {
      link.addEventListener('click', () => {
        this.#deactivateDarkMode();
      })
    });
  }

  toggleDarkMode() {
    if (window.scrollY >= 500) {
      this.#activateDarkMode();
    } else {
      this.#deactivateDarkMode();
    };
  };

  #activateDarkMode() {
    this.titleTarget.classList.add('text-light-blue');
    this.titleTarget.classList.remove('text-primary-800');
    this.element.classList.add('backdrop-blur-lg', 'bg-primary-900/90');
    this.itemTargets.forEach((item) => {
      if (!this.activeValue) {
        item.classList.add('text-light-blue')
        item.classList.remove('text-gray', 'text-primary-800')
      };
    });
  };

  #deactivateDarkMode() {
    this.titleTarget.classList.remove('text-light-blue');
    this.titleTarget.classList.add('text-primary-800');
    this.element.classList.remove('backdrop-blur-lg', 'bg-primary-900/90');
    this.itemTargets.forEach(item => {
      if (!this.activeValue) {
        item.classList.remove('text-light-blue')
        item.classList.add('text-gray', 'text-primary-800')
      };
    });
  };
}
