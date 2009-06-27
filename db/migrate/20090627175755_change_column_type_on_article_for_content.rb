class ChangeColumnTypeOnArticleForContent < ActiveRecord::Migration
  def self.up
    change_column :articles, :content, :text
  end

  def self.down
    change_column :articles, :content, :string
  end
end
