class Hotel < ApplicationRecord
  has_one_attached :photo
  validates :name, :address, :price_per_night, :description, presence: true

end
