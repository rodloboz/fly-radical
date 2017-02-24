class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :lesson_slot
  has_one :lesson, through: :lesson_slot
end
