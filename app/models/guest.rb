class Guest < ApplicationRecord
  belongs_to :user
  belongs_to :event

  # user - event pair has to be unique
end
