class Album < ApplicationRecord
  has_many_attached :photos
end
