class AlbumSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :user_id
  # has_one :user
  # has_many :photos 
end
