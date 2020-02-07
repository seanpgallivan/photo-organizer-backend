class Photo < ApplicationRecord
  belongs_to :user
  has_many :albums_photos
  has_many :albums, through: :albums_photos
end
