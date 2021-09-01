class DashboardsController < ApplicationController
  # before_action :authenticate_user!
  # include Pundit
  skip_before_action :authenticate_user!, only: [ :show ]

  def show
    @event = Event.find(params[:id])
    authorize @event
  end

end
