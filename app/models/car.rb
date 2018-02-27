class Car < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :make, presence: true
  validates :model, presence: true
  validates :mileage, presence: true
  validates :year, presence: true
  validates :color, presence: true
  validates :price_per_day, presence: true
  validates :location, presence: true

  mount_uploader :photo, PhotoUploader
end
