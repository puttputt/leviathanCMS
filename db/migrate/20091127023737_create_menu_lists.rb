class CreateMenuLists < ActiveRecord::Migration
  def self.up
    create_table :menu_lists do |t|
      t.string :name
      
      t.timestamps
    end
  end

  def self.down
    drop_table :menu_lists
  end
end
