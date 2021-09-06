class GuestsController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @emails = params[:emails].split(",")
    @emails.each do |email|
      user = User.find_by(email: email)
      guest = Guest.create(status: 'pending', event: @event, user: user)
      authorize guest
      redirect_to dashboard_path(current_user.events.first)
    end
    # @user = User.find_by("email ILIKE ?", "%#{@user.email}%")
    # @guest = Guest.new(guest_params)
    # @guest.status = 'pending'
    # @guest.event = @event
    # @guest.user = @user
    # authorize @guest
  end

  def accept_event
    @guest = Guest.find(params[:id])
    authorize @guest
    @guest.update(status: "accepted")
    redirect_to dashboard_path(current_user.events.first)
  end

  def reject_event
    @guest = Guest.find(params[:id])
    authorize @guest
    @guest.update(status: "rejected")
    redirect_to dashboard_path(current_user.events.first)
  end

end
