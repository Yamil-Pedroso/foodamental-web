import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "button" ]
  icon() {
    const element = this.buttonTarget
    const icon = element.value
    // display in the DOM color: red;
    icon.addEventListener("click", (event) => {
      event.preventDefault()
      console.log("clicked")

    });
  }
}
