class RecommendedActivity < ApplicationRecord
  belongs_to :activity
  belongs_to :recommendation
end
