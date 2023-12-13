import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="pop-up"
export default class extends Controller {

  static values = {
    movieId: Number
  }

  static targets = ["watchlistButton", "historyButton", "cinemaNotifications"]

  connect() {
    const popup = new URL(document.location.href).searchParams.get('popup')
    if (popup === 'true') {
      new bootstrap.Modal(document.getElementById('menuModal')).show()
    }
  }

  add_watchlist(){
    fetch (`/movies/${this.movieIdValue}/add_watchlist`,{
      method: "POST",
      headers: { "Accept": "application/json" }
    })
    .then(response => response.json())
    .then((history) => {
      const iconWatchlist = this.watchlistButtonTarget.querySelector("i")
      const iconHistory = this.historyButtonTarget.querySelector("i")
      if (history) {
        iconWatchlist.classList.remove("btn-add-to-watchlist-active")
        iconWatchlist.classList.add("btn-add-to-watchlist")
        iconHistory.classList.add("btn-add-to-history-active")
        iconHistory.classList.remove("btn-add-to-history")
      } else {
        iconWatchlist.classList.add("btn-add-to-watchlist-active")
        iconWatchlist.classList.remove("btn-add-to-watchlist")
        iconHistory.classList.remove("btn-add-to-history-active")
        iconHistory.classList.add("btn-add-to-history")
      }
    })
  }

  add_history(){
    fetch (`/movies/${this.movieIdValue}/add_history`,{
      method: "POST",
      headers: { "Accept": "application/json" }
    })
    .then(response => response.json())
    .then((history) => {
      const iconHistory = this.historyButtonTarget.querySelector("i")
      const iconWatchlist = this.watchlistButtonTarget.querySelector("i")
      if (history) {
        iconHistory.classList.add("btn-add-to-history-active")
        iconHistory.classList.remove("btn-add-to-history")
        iconWatchlist.classList.remove("btn-add-to-watchlist-active")
        iconWatchlist.classList.add("btn-add-to-watchlist")
      } else {
        iconHistory.classList.remove("btn-add-to-history-active")
        iconHistory.classList.add("btn-add-to-history")
        iconWatchlist.classList.add("btn-add-to-watchlist-active")
        iconWatchlist.classList.remove("btn-add-to-watchlist")
      }
    })
  }

  cinema_notifications(){
    fetch (`/movies/${this.movieIdValue}/cinema_notifications`,{
      method: "POST",
      headers: { "Accept": "application/json" }
    })
    .then(response => response.json())
    .then((marked) => {
      const iconNotifications = this.cinemaNotificationsTarget.querySelector("i")
      if (marked) {
        iconNotifications.classList.add("btn-add-to-notifications-active")
        iconNotifications.classList.remove("btn-add-to-notifications")
      } else {
        iconNotifications.classList.add("btn-add-to-notifications")
        iconNotifications.classList.remove("btn-add-to-notifications-active")
      }
    })

  }
}
