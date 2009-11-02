class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.column :title, :string
      t.column :body, :text
      t.column :state, :string, :null => :no, :default => 'draft'
      t.column :published, :datetime
      t.column :page, :integer, :null => :no, :default => 0
      t.column :created_at,                :datetime
      t.column :updated_at,                :datetime
      t.column :category_id, :integer
      t.column :user_id, :integer
    end
  end

  def self.down
    drop_table :posts
  end
end
