class PlanningPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    record.event.user == user
  end

  def update?
    create?
  end

  def destroy?
    create?
  end
end
