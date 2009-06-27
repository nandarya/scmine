class ChangeTypeOnDescriptionForReplays < ActiveRecord::Migration
  def self.up
    change_column :replays, :description, :text
  end

  def self.down
    change_column :replays, :description, :string
  end
end
