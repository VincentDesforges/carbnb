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

  # mount_uploader :photo, PhotoUploader
  has_many :carphotos
  # accepts_nested_attributes_for :carphotos

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
