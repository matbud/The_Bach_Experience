import { Controller } from "stimulus";

export default class extends Controller {
  // static targets = ['form', 'input', 'list'];

  connect() {
    console.log('connected');
    // console.log(this.inputTarget);
    // console.log(this.listTarget);
  }

  reloadRecommendation(e) {
    console.log(e);
    e.preventDefault();
    let eventId = this.element.dataset.eventId
    let url = `/events/${eventId}/reload_recommendation`
    fetch(url, {
      method: "GET",
      headers: {
        "Content-Type": "application/json"
      }
    })
      .then(response => response.json())
      .then((data) => {
        let container = document.getElementById('recommendation-card')
        container.innerHTML = data.partial;
        console.log(data);
      });
  }
}