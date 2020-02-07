class AlbumsPhoto < ApplicationRecord
  belongs_to :album
  belongs_to :photo
end
