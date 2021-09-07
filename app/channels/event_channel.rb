class EventChannel < ApplicationCable::Channel
  def subscribed
    event = Event.find(params[:id])
    stream_for event

    consumer.subscriptions.create({ channel: "EventChannel", id: id }, {
      received(data) {
        messagesContainer.insertAdjacentHTML('beforeend', data);
      }
    });
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
