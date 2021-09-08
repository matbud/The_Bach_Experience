class MessagesController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @message = Message.new(message_params)
    @message.event = @event
    @message.user = current_user
    authorize @message
    @message.save
      # redirect_to dashboard_path(@event, anchor: "message-#{@message.id}")

      # redirect_to dashboard_path(current_user.events.first, anchor: "message-#{@message.id}")
    # else
    #   render "dashboard/show"
    EventChannel.broadcast_to(
      @event,
      {message: render_to_string(partial: "message", locals: { message: @message }), current_user_id: current_user.id}
    )
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
