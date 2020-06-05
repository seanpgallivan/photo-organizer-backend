class User < ApplicationRecord
    has_many :photos 
    has_many :albums 


    validates :username, 
        presence: {message: "Username can't be blank"},
        format: {with: /\A[-_.a-z0-9]+\Z/i, message: "Username can only include letters, numbers, '-', '_', or '.'"},
        uniqueness: {case_sensitive: false, message: "Username is not available"},
        length: {minimum: 4, maximum: 20, message: "Username must be 4-20 characters in length"}


end
