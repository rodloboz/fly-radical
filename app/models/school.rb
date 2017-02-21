class School < ApplicationRecord
  belongs_to :user

  validates :name, uniqueness: { case_sensitive: false }, presence: true

  # runs remaining validations if already active or on becoming active
  validates :about, :address, :city, :country, :email, :phone, presence: true, if: :should_validate?

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
