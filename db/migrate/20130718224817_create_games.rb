class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.hstore :data
      t.integer :user_id
      t.integer :user_fact_id
      t.timestamps
    end
  end
end
