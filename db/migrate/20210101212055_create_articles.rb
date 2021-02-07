class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
    t.string :title
    t.text :author
    t.integer :user_id
    end 
  end
end

