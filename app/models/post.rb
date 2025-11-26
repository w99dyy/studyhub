class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_rich_text :content
  acts_as_taggable_on :tags, :subjects  

  validates :title, presence: true
  validates :content, presence: true
end
