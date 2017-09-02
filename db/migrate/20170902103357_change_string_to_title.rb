class ChangeStringToTitle < ActiveRecord::Migration
  def change
    remove_column :articles, :string, :string
    add_column :articles, :title, :string
  end
end
