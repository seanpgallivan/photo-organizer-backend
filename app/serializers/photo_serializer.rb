class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :description, :tags, :people, :location, :size, :time, :filename
  has_one :user
  has_many :albums
end
