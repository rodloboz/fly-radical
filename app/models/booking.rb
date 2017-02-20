class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :lesson_slot
end
