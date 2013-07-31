class RemoveColumnsFromUserFacts < ActiveRecord::Migration
  def change
    remove_column :user_facts, :music
    remove_column :user_facts, :movies
    remove_column :user_facts, :family
    remove_column :user_facts, :links
  end
end
