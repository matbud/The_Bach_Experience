class RecommendationsController < ApplicationController

  # after_action :verify_policy_scoped, only: [:index, :show]

  def index
    @recommendations = policy_scope(Recommendation).order(created_at: :desc)
    @hotel = Hotel.all.sample
    @activity = Activity.all.sample(3)
    authorize @recommendations
  end

  def show
    @event = Event.find(params[:event_id])

    @hotel = Hotel.all.sample
    if Recommendation.find(params[:id])
      @recommendation = Recommendation.find(params[:id])
    else
      # @event = Event.find(params[:event_id])
      # @hotel = Hotel.all.sample
      @recommendation = Recommendation.new(hotel: @hotel, event: @event)
      @recommendation.save
      3.times do
        loop do
          recommended_activity = RecommendedActivity.new(recommendation: @recommendation, activity: Activity.all.sample)
          break if recommended_activity.save
        end
      end
    end
    authorize @recommendation
  end
end
