class Carphoto < ApplicationRecord
  belongs_to :car

  mount_uploader :photo, PhotoUploader
end
