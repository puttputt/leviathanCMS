class CreateMenuLists < ActiveRecord::Migration
  def self.up
    create_table :menulists do |t|
      t.string :name
      t.integer :position, :default => 0
      t.timestamps
    end
  end

  def self.down
    drop_table :menulists
  end
end
