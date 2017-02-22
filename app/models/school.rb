class School < ApplicationRecord
  belongs_to :user

  has_attachments :photos, maximum: 2
  has_many :lessons
  has_many :sports, through: :lessons

  validates :name, uniqueness: { case_sensitive: false }, presence: true

  # runs remaining validations if already active or on becoming active
  validates :about, :address, :city, :country, :email, :phone, :photos, presence: true, if: :should_validate?

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
end
