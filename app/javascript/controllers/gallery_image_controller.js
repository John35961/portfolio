import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="gallery-image"
export default class extends Controller {
  connect() {
    this._setImageDimensions();
  }

  _setImageDimensions() {
    const image = new Image();
    image.src = this.element.href;

    image.onload = () => {
      this.element.dataset.pswpWidth = image.naturalWidth;
      this.element.dataset.pswpHeight = image.naturalHeight;
    };
  }
}
