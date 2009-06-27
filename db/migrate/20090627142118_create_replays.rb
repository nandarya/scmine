class CreateReplays < ActiveRecord::Migration
  def self.up
    create_table :replays do |t|
      t.string :name
      t.string :description
      t.integer :user_id
      t.timestamps
    end
  end
  
  def self.down
    drop_table :replays
  end
end
