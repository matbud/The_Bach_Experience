class Guest < ApplicationRecord
  belongs_to :user
  belongs_to :event

  # user - event pair has to be unique
  validates :user_id, uniqueness: true
  # validates :user_id, uniqueness: { scope: :event_id, message: "This user is already on the guest list" }
end
