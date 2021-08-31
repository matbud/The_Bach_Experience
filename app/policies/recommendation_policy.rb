class RecommendationPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def show?
    # later needs to be changed to work only for the admin
    true
  end
end
