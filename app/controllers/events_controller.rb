class EventsController < ApplicationController
  def new
    @event = Event.new
    authorize @event
  end

  def create

  end

  private

  def event_params
    # to fill in
    params.require(:event).permit()
  end
end
