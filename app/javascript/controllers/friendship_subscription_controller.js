import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

// Connects to data-controller="friendship-subscription"
export default class extends Controller {
  static values = { friendshipId: Number }
  static targets = ["messages"]

  connect() {
    this.channel = createConsumer().subscriptions.create(
      { channel: "FriendshipChannel", id: this.friendshipIdValue },
      { received: data => this.#insertMessageAndScrollDown(data) }
    )
    console.log(`chatroom with the id ${this.friendshipIdValue}.`)
  }
  #insertMessageAndScrollDown(data) {
    this.messagesTarget.insertAdjacentHTML("beforeend", data)
    this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
  }
}
