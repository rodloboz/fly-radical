class School < ApplicationRecord
  belongs_to :user
  has_many :school_photos
  has_many :sports, through: :lessons
end
