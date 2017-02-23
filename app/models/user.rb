class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :lessons, through: :schools
  has_many :schools
  has_many :bookings
  has_many :reviews, through: :bookings
  has_attachment  :avatar, accept: [:jpg, :png, :gif]

  # validates :first_name, presence: true, length: {maximum: 35}
  # validates :last_name, presence: true, length: {maximum: 35}
  # validates :avatar, presence: true
end
