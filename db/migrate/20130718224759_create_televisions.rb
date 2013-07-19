class CreateTelevisions < ActiveRecord::Migration
  def change
    create_table :televisions do |t|
      t.hstore :data
      t.integer :user_id
      t.integer :user_fact_id
      t.timestamps
    end
  end
end
