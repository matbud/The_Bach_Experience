class GuestPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    user.admin
  end

  def accept_invitation?
    record.user == user
  end

  def reject_invitation?
    accept_invitation?
  end
end
