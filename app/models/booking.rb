class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car

  # validates :total_price, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
