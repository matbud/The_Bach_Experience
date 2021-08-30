class Recommendation < ApplicationRecord
  belongs_to :event
  belongs_to :hotel
end
