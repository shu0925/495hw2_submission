class Post < ActiveRecord::Base
  attr_accessible :body, :title
  
  
  has_many :comments
    belongs_to :user
    
  validates :title, :presence => true
  validates :body, :presence => true
  validates :user_id, :presence => true
  
end
