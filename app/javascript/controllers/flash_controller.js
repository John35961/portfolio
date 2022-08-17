import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="flash"
export default class extends Controller {
  static targets = ['message']

  connect() {
    const message = this.messageTarget;

    setTimeout(() => {
      message.classList.add('opacity-0', '-translate-y-3')
    }, 3000)
  };
}
