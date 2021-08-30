class Activity < ApplicationRecord
  has_many :recommended_activities

  validates :name, :address, :price, :description, presence: true

end
