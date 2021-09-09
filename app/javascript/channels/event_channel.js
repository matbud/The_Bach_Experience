import consumer from "./consumer";

const initEventCable = () => {
  const messagesContainer = document.getElementById("messages");
  if (messagesContainer) {
    const id = messagesContainer.dataset.eventId;
    const current_user_id = messagesContainer.dataset.currentUserId;

    consumer.subscriptions.create(
      { channel: "EventChannel", id: id },
      {
        received(data) {
          console.log(data); // called when data is broadcast in the cable
          messagesContainer.insertAdjacentHTML("beforeend", data.message);
          if (current_user_id == data.current_user_id) {
            let form = document.querySelector("form");
            form.reset();
            let messages =
              messagesContainer.querySelectorAll(".message-container");
            messages[messages.length - 1].scrollIntoView();
          }
        },
      }
    );
  }
};

export { initEventCable };
