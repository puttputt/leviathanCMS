class CreateCategories < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.column :name, :string
      t.column :slug, :string
      t.column :description, :text
      t.column :parent_id, :integer
      t.timestamps
    end
  end

  def self.down
    drop_table :categories
  end
end
