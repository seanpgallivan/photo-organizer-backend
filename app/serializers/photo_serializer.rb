class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :description, :tags, :people, :location, :size, :time, :filename, :user_id, :albums
  # has_one :user
  # has_many :albums
end
