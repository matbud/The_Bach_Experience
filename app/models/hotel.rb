class Hotel < ApplicationRecord

  validates :name, :address, :price_per_night, :description, presence: true

end
