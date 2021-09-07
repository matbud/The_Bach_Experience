class GuestsController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @emails = params[:emails].split(",")
    @emails.each do |email|
      user = User.find_by(email: email)
      guest = Guest.create(status: 'pending', event: @event, user: user)
      authorize guest
    end
    redirect_to dashboard_path(current_user.event)
  end

  def accept_invitation
    @guest = Guest.find(params[:id])
    authorize @guest
    @guest.update(status: "accepted")
    redirect_to dashboard_path(current_user.guest.event)
  end

  def reject_invitation
    @guest = Guest.find(params[:id])
    authorize @guest
    @guest.update(status: "rejected")
    redirect_to dashboard_path(current_user.guest.event)
  end

end
