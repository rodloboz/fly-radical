class Lesson < ApplicationRecord
  belongs_to :school
  belongs_to :sport

  has_many :lesson_slots
  has_many :lesson_photos
end
