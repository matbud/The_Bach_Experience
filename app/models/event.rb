class Event < ApplicationRecord
  belongs_to :user
  has_many :messages
  has_many :recommendations
  has_many :guests

  validates :gender, :theme, :start_date, :end_date, :budget, :number_of_guests, :location, presence: true
  validates :budget, :number_of_guests, numericality: { greater_than: 0 }
end
