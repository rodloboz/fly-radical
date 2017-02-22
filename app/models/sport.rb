class Sport < ApplicationRecord
  belongs_to :category
  has_many :lessons
end
