class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.hstore :data
      t.integer :user_id
      t.integer :user_fact_id
      t.timestamps
    end
  end
end
