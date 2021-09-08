class PlanningsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :create ]

  def create
    @event = Event.find(params[:event_id])
    @new_planning = Planning.new(planning_params)
    @new_planning.event = @event
    authorize @new_planning
    if @new_planning.save
      redirect_to dashboard_path(current_user.event)
    else
      render :create
    end
  end

  def edit
    @new_planning = Planning.find(params[:id])
    authorize @new_planning
  end

  def update
    @new_planning = Planning.find(params[:id])
    @new_planning.update(planning_params)
    authorize @new_planning
    redirect_to dashboard_path(current_user.event)
  end

  def destroy
    @new_planning = Planning.find(params[:id])
    @new_planning.destroy
    authorize @new_planning
    redirect_to dashboard_path(current_user.event)
  end

  private

  def planning_params
    params.require(:planning).permit(:name, :start_time, :end_time)
  end
end
