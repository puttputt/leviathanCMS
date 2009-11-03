class Comment < ActiveRecord::Base
  white_list :only => :content, :profile => :default
  acts_as_tree :order => 'created_at'
  belongs_to :post
  
end
