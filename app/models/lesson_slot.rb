class LessonSlot < ApplicationRecord
  belongs_to :lesson
  has_many :bookings
end
