class Photo < ApplicationRecord
  belongs_to :user
  has_many :albums_photos
  has_many :albums, through: :albums_photos

  validates :description, 
    length: {minimum: 1, maximum: 500, message: "Must be 1-500 characters in length"}

  validates :location,
    length: {minimum: 1, maximum: 40, message: "Must be 1-40 characters in length"}

  validates :filename,
    url: true,
    length: {maximum: 100, message: "Must be 1-100 characters in length"}


  validates_each :tags, :people do |record, attr, value|
    if !value.is_a?(Array) || !value.all?{|el| el.is_a?(String)}
      record.errors.add(attr, :invalid) 
    elsif value.count > 20
      record.errors.add(attr, "#{attr.capitalize} limit (20) exceeded")
    elsif attr == :tags && !value.all?{|el| el.size > 0 && el.size <= 20}
      record.errors.add(:tags, "Tags must be 1-20 characters long")
    elsif attr == :people && !value.all?{|el| el.size > 0 && el.size <= 30}
      record.errors.add(:people, "People must be 1-30 characters long")
    end
  end

end