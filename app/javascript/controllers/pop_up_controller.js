import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="pop-up"
export default class extends Controller {
  connect() {
    console.log("Hello from pop_up_controller.js")
  }
}
