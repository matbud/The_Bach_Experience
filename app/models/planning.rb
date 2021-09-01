class Planning < ApplicationRecord
  belongs_to :event

  validates :start_time, presence: true
  validates :end_time, presence: true

  default_scope -> { order(:start_time) }  # Our plannings will be ordered by their start_time by default

#information : https://kitt.lewagon.com/knowledge/tutorials/simple_calendar
end
