class CreateUserDetailsTable < ActiveRecord::Migration
  def change
    create_table :user_details do |t|
      t.integer :user_id
      t.text :graph_data
      t.text :likes
      t.text :books
      t.text :music
      t.text :movies
      t.text :games
      t.text :television
      t.text :posts
      t.text :links
    end
  end
end
