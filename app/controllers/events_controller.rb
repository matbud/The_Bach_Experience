class EventsController < ApplicationController
  before_action :set_event, only: [ :choose_recommendation, :confirm_recommendation, :summary, :confirm_event, :edit, :update, :invite]
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
      redirect_to choose_recommendation_path(@event)
    else
      render :new
    end
  end

  def choose_recommendation
    authorize @event
    generate_recommendation
  end

  def confirm_recommendation
    @event.recommendations.last.update(chosen: true)
    authorize @event
    redirect_to summary_path(@event)
  end

  def summary
    @recommendation = @event.recommendations.last
    authorize @event
    # TODO: implement edit button in the view
  end

  def confirm_event
    @event.update(status: "confirmed")
    authorize @event
    # redirect_to dashboard_path(@event)
    # TODO: change redirection to invitation
    redirect_to invite_path(@event)
  end

  def invite
    authorize @event
  end

  def edit
    authorize @event
  end

  def update
    authorize @event
    @event.recommendations.last.update(chosen: false)
    @event.update(event_params)
    redirect_to choose_recommendation_path(@event)
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:name, :start_date, :end_date, :theme, :gender, :budget_per_person, :number_of_guests, :location)
  end

  def generate_recommendation
    # create a new recommendation
    # 1. choose a hotel
    set_hotel

    # 2. create Recommendation instance and assign the hotel and event
    @recommendation = Recommendation.create(hotel: @hotel, event: @event)

    # 3. choose valid activites
    # TODO: change how the activities are selected based on theme etc.
    @valid_activities = Activity.all
    generate_recommended_activities
  end

  def generate_recommended_activities
    # choose 3 unique activities from the valid activities
    max_price_per_activity = (@event.budget_per_person * BUDGET_PROPORTIONS[:activity]).to_i
    activities = Activity.where("(gender ILIKE ? OR gender ILIKE ?) AND address ILIKE ? AND theme ILIKE ? AND price <= ?", "mixed", "#{@event.gender}", "%#{@event.location}%", "%#{@event.theme}%", max_price_per_activity).sample(3)

    # use these activities to create RecommendedActivities
    activities.each { |activity| RecommendedActivity.create(recommendation: @recommendation, activity: activity) }
  end

  def set_hotel
    night_count = @event.end_date - @event.start_date
    budget_for_hotel = @event.budget_per_person * BUDGET_PROPORTIONS[:hotel]
    max_price_per_night = (budget_for_hotel / night_count).to_i
    @hotel = Hotel.where("location ILIKE ? AND theme ILIKE ? AND price_per_night <= ?", "%#{@event.location}%", "%#{@event.theme}%", max_price_per_night).sample
  end
end
