class Article < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true
  validates :title, length: { minimum: 5, maximum: 100 }
  validates :content, length: { minimum: 10 }

  def excerpt
    content.split("\n\n").first if content.present?
  end
end
