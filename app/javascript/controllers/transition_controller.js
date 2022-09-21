import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="transition"
export default class extends Controller {
  static targets = ["container"]

  connect() {
    const container = this.containerTarget;
    const internalLinks = Array.prototype.slice.call(document.querySelectorAll('a'))
      .filter(link => link.hostname === window.location.hostname);

    internalLinks.forEach((link) => {
      link.addEventListener('click', (event) => {
        event.preventDefault();
        container.classList.add('opacity-0', 'transition-opacity', 'duration-300');
        setTimeout(() => {
          window.location = link.href;
        }, 400);
      })
    });

    window.addEventListener('pageshow', (event) => {
      if (event.persisted) {
        container.classList.remove('opacity-0');
        container.classList.add('opacity-100');
      }
    })
  }
}
