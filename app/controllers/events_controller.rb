class EventsController < ApplicationController
  BUDGET_PROPORTIONS = {
    hotel: 0.4,
    activity: 0.2
  }

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

  def choose_recommendation
    @event = Event.find(params[:id])
    authorize @event
    generate_recommendation
  end

  def confirm_recommendation
    @event = Event.find(params[:id])
    @event.recommendations.last.update(chosen: true)
    authorize @event
    redirect_to summary_path(@event)
  end

  def summary
    @event = Event.find(params[:id])
    @recommendation = @event.recommendations.last
    authorize @event
  end

  private

  def event_params
    params.require(:event).permit(:start_date, :end_date, :theme, :gender, :budget_per_person, :number_of_guests, :location)
  end

  def generate_recommendation
    # create a new recommendation
    # 1. choose a hotel
    # TODO: change how the hotel is selected based on budget, location, theme etc.
    hotel = Hotel.all.sample

    # 2. create Recommendation instance and assign the hotel and event
    @recommendation = Recommendation.create(hotel: hotel, event: @event)

    # 3. choose valid activites
    # TODO: change how the activities are selected based on theme etc.
    @valid_activities = Activity.all
    generate_recommended_activities
  end

  def generate_recommended_activities
    # choose 3 unique activities from the valid activities
    activities = @valid_activities.sample(3)

    # use these activities to create RecommendedActivities
    activities.each { |activity| RecommendedActivity.create(recommendation: @recommendation, activity: activity) }
  end
end
