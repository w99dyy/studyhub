class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  acts_as_taggable_on :tags, :subjects  

  valitades :title, presence: true
  validate :content, presence: true
end
