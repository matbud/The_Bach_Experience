class EventPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    user.admin
  end

  def show?
    record.user == user || record.guests.include?(user.guest)
  end

  def update?
    record.user == user
  end

  def choose_recommendation?
    update?
  end

  def reload_recommendation?
    update?
  end

  def confirm_recommendation?
    update?
  end

  def change_theme?
    update?
  end

  def confirm_event?
    update?
  end

  def invite?
    update?
  end

  def summary?
    show?
  end
end
