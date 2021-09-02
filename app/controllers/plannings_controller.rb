class PlanningsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :create ]

  def create
    @event = Event.find(params[:event_id])
    @new_planning = Planning.new(planning_params)
    @new_planning.event = @event
    authorize @new_planning
    if @new_planning.save
      redirect_to dashboard_path(current_user.events.first)
    else
      render :create
    end
  end

  private

  def planning_params
    params.require(:planning).permit(:name, :start_time, :end_time)
  end
end
