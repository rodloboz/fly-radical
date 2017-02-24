class Lesson < ApplicationRecord
  belongs_to :school
  belongs_to :sport

  has_many :reviews, through: :bookings
  has_attachments :photos, maximum: 2


  validates :name, uniqueness: { case_sensitive: false, scope: :school_id }, presence: true

  # runs remaining validations if already active or on becoming active
  validates :description, :address, :city, :country, :equipment_provided, :equipment_required, :difficulty, :cancellation_policy, :photos, presence: true, if: :should_validate?

  geocoded_by :full_address
  after_validation :geocode, if: :address_changed? || :city_changed? || :country_changed?

  def activate
    @activating = true
  end

  def deactivate
    @activating = false
  end

  def should_validate?
    is_active || @activating
  end

  def full_address
  "#{address}, #{postal_code}, #{city}, #{country}"
  end

  # def duration_time
  #   ChronicDuration.output(duration, format: :long)
  # end
end
