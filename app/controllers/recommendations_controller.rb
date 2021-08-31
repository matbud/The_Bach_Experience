class RecommendationsController < ApplicationController

  def index
    @hotel = Hotel.all.sample
    @activity = Activity.all.sample(3)
  end

  def show
    @hotel = Hotel.all.sample
    @activity = Activity.all.sample(3)
    @recommendation = Recommendation.find(params[:id])
  end
end
