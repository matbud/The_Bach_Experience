class GuestPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    user.admin
  end

  def accept_event?
    record.user == user
  end

  def reject_event?
    accept_event?
  end
end
