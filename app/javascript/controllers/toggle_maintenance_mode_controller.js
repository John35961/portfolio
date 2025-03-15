import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-maintenance-mode"
export default class extends Controller {
  static targets = ["checkbox"]

  onSubmit(event) {
    event.preventDefault();
    const url = this.element.action;

    fetch(url, {
      method: "PATCH",
      headers: {
        "Content-Type": "application/json",
        "X-CSRF-Token": document.querySelector('[name="csrf-token"]').content,
      },
    })
  }
}
