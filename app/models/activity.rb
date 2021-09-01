class Activity < ApplicationRecord
  has_many :recommended_activities
  has_one_attached :photo

  validates :name, :address, :price, :description, presence: true

end
