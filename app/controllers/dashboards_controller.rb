class DashboardsController < ApplicationController
  # before_action :authenticate_user!
  # include Pundit
  skip_before_action :authenticate_user!, only: [ :show ]

  def show
    @event = Event.find(params[:id])
    authorize @event
    @number_of_day = @event.end_date.day - @event.start_date.day + 1

    @plannings = Planning.where(event: @event)

    # Scope your query to the dates being shown:
    start_date = params.fetch(:start_date, @event.start_date.to_s).to_date

    # Objects we'll pass to their respective forms
    @new_planning = Planning.new
    @message = Message.new
  end
end
