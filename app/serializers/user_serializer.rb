class UserSerializer < ActiveModel::Serializer
    attributes :id, :username, :bio, :fullname
    has_many :photos
  end