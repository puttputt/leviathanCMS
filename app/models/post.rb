class Post < ActiveRecord::Base
  belongs_to :categories
  has_many :comments
  
end
