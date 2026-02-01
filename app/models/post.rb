class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :tags
  has_rich_text :content
  acts_as_taggable_on :tags, :subjects
  has_many_attached :images


  validates :title, presence: true
  validates :content, presence: true


  scope :recent, -> { order(created_at: :desc) }
  scope :by_tag, ->(tag) { tagged_with(tag) if tag.present? }
  scope :recent_posts, ->(limit = 10) { recent.limit(limit) }
end
