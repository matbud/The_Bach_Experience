class Planning < ApplicationRecord
  belongs_to :event

  validates :start_time, presence: true
  validates :end_time, presence: true
end
