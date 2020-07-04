class User < ApplicationRecord
    has_many :photos 
    has_many :albums 


    validates :username, 
        format: {with: /\A[-_.a-z0-9]+\Z/i, message: "Only letters, numbers, ' - ', ' _ ', or ' . ' allowed"},
        uniqueness: {case_sensitive: false, message: "That username is unavailable"},
        length: {minimum: 4, maximum: 20, message: "Must be 4-20 characters in length"}

    validates :bio,
        presence: {message: "Bio can't be blank"},
        length: {maximum: 500, message: "Must be <500 characters in length"}

    validates :fullname,
        presence: {message: "Fullname can't be blank"},
        format: {with: /\A[-' a-z]+\Z/i, message: "Only letters, spaces, apostrophes, or dashes allowed"},
        length: {maximum: 40, message: "Must be <40 chracters in length"}

end