class Picture < ApplicationRecord
  validates :image_url, presence: true
end
