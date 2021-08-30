class Recommendation < ApplicationRecord
  belongs_to :event
  belongs_to :hotel
  has_many :recommended_activities
  has_many :activities, through: :recommended_activities
end
