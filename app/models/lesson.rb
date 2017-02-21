class Lesson < ApplicationRecord
  belongs_to :school
  belongs_to :sport

  has_many :lesson_slots
  has_many :lesson_photos

  validates :name, uniqueness: { case_sensitive: false, scope: :school_id }, presence: true

  # runs remaining validations if already active or on becoming active
  validates :description, :equipment_provided, :equipment_required, :difficulty, :cancellation_policy, presence: true, if: :should_validate?


  def is_empty?
    self.any? { |attribute| }
  end
  def activate
    @activating = true
  end

  def deactivate
    @activating = false
  end

  def should_validate?
    is_active || @activating
  end
end
