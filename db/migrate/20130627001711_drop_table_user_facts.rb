class DropTableUserFacts < ActiveRecord::Migration
  def change
    drop_table :user_facts
  end
end
