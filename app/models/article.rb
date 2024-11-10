class Article < ApplicationRecord
  # belongs_to :author, class_name: 'User'
  # belongs_to :category
  has_many :article_tags
  # has_many :tags, through: :article_tags

  # Validations
  validates :title, presence: true
  validates :content, presence: true
  validates :slug, presence: true, uniqueness: true

  validates :title, length: { minimum: 5, maximum: 100 }
  validates :content, length: { minimum: 10 }

  def excerpt
    content.split("\n\n").first if content.present?
  end

  # Enums
  enum :status, { draft: 0, published: 1, archived: 2 }
  # enum status: [ :draft, :published, :archived ]

  # Callbacks
  before_validation :generate_slug, if: :title_changed?

  private

  def generate_slug
    self.slug = title.to_s.parameterize
  end
end
