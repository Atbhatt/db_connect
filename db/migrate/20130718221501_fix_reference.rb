class FixReference < ActiveRecord::Migration
  def change
    rename_column :friends, :user_facts_id, :user_fact_id
    rename_column :likes, :user_facts_id, :user_fact_id
  end
end
