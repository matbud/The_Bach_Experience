class EventsController < ApplicationController
  def new
    @event = Event.new
    authorize @event
  end

  def create
    @event = Event.new(event_params)
    @event.status = 'pending'
    @event.user = current_user
    authorize @event
    if @event.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def event_params
    params.require(:event).permit(:start_date, :end_date, :theme, :gender, :budget, :number_of_guests, :location)
  end
end
