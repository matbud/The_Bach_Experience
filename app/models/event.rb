class Event < ApplicationRecord
  belongs_to :user
  has_many :messages
  has_many :recommendations
  has_many :guests
end
