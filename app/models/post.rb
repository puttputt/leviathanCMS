class Post < ActiveRecord::Base
  acts_as_taggable
  
  belongs_to :categories
  has_many :comments
  belongs_to :user
  
end
