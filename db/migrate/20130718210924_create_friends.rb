class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.hstore :data
      t.integer :user_id
      t.integer :user_facts_id
      t.timestamps
    end
  end
end
