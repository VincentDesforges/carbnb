class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :cars
  has_many :bookings

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, presence: true
  validates :username, uniqueness: true
  validates :address, presence: true

end
