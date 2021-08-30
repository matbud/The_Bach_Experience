class RecommendedActivity < ApplicationRecord
  belongs_to :activity
  belongs_to :recommendation

  validates :activity_id, uniqueness: { scope: :recommendation_id, message: "This activity is already in the recommendation" }

end
