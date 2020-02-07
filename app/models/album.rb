class Album < ApplicationRecord
  belongs_to :user
  has_many :albums_photos 
  has_many :photos, through: :albums_photos
end
