class Event < ApplicationRecord
  belongs_to :user
  has_many :messages
  has_many :recommendations
  has_many :guests
  has_many :plannings

  validates :gender, :theme, :start_date, :end_date, :budget_per_person, :number_of_guests, :location, presence: true
  validates :budget_per_person, :number_of_guests, numericality: { greater_than: 0 }

  def available_dates
    { from: start_date, to: end_date }
  end

  def unavailable_dates
    plannings.map { |planning| { from: planning.start_time.strftime("%b %d %Y %H:%M"), to: planning.end_time.strftime("%b %d %Y %H:%M") } }
  end
end
