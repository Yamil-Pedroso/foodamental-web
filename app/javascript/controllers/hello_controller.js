import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = [ "name" ]

    greet() {
      const element = this.nameTarget
      const name = element.value
      // display in the DOM


      console.log(`Hello, ${name}!`)
  }
}
