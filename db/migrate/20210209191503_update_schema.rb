class UpdateSchema < ActiveRecord::Migration
  def change
    remove_column :articles, :author, :string
    remove_column :articles, :user, :string
    add_column :articles, :user_id, :int
    add_column :users, :admin, :boolean, default: false
  end
end
