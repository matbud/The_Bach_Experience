class Planning < ApplicationRecord
  belongs_to :event

  validates :start_time, presence: true
  validates :end_time, presence: true

  default_scope -> { order(:start_time) }  # Our plannings will be ordered by their start_time by default

  def index
  # Scope your query to the dates being shown:
  start_date = params.fetch(:start_date, Date.today).to_date

  # For a monthly view:
  @plannings = Planning.where(starts_at: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)

  # Or, for a weekly view:
  @plannings = Planning.where(starts_at: start_date.beginning_of_week..start_date.end_of_week)
  end

end


#information : https://kitt.lewagon.com/knowledge/tutorials/simple_calendar
