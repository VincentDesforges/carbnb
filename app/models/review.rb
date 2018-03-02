class Review < ApplicationRecord
  belongs_to :car
  validates :content, presence: true
  validates :rating, presence: true
end
