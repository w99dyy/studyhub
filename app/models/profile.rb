class Profile < ApplicationRecord
  belongs_to :user
  validates :username, presence: true, uniqueness: true
  validates :bio, length: { maximum: 500 }
  
  before_validation :set_default_username, on: :create
  

  private
  
  def set_default_username
    self.username ||= "user#{User.count + 1000}" # or use email prefix
  end
end

