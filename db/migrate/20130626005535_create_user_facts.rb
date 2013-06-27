class CreateUserFacts < ActiveRecord::Migration
  def change
    create_table :user_facts do |t|
      t.integer :user_id
      t.text :graph_data
    end
  end
end
