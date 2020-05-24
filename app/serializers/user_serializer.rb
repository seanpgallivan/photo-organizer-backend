class UserSerializer < ActiveModel::Serializer
    attributes :id, :username, :bio, :fullname, :tags, :people, :locations
    has_many :photos
    has_many :albums

    def tags
      self.object.photos.reduce([]) {|memo, photo| memo + photo.tags}.uniq.sort {|a,b| a.downcase <=> b.downcase}
    end

    def people
      self.object.photos.reduce([]) {|memo, photo| memo + photo.people}.uniq.sort {|a,b| a.downcase <=> b.downcase}
    end

    def locations
      self.object.photos.reduce([]) {|memo, photo| memo.push(photo.location)}.uniq.sort {|a,b| a.downcase <=> b.downcase}
    end

  end