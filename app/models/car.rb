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

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  include PgSearch
  pg_search_scope :search_by_make_model_location,
    against: [ :make, :model, :location ],
    associated_against: {
      user: [ :username ]
    },
    using: {
      tsearch: { prefix: true }
    }

end
