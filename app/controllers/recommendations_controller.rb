class RecommendationsController < ApplicationController

  # after_action :verify_policy_scoped, only: [:index, :show]

  def index
    @recommendations = policy_scope(Recommendation).order(created_at: :desc)
    @hotel = Hotel.all.sample
    @activity = Activity.all.sample(3)
    authorize @recommendations
  end

  def show
    @hotel = Hotel.all.sample
    @activity = Activity.all.sample(3)
    @recommendation = Recommendation.find(params[:id])
    authorize @recommendations
  end
end
