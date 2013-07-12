class AddFriendsToUserFacts < ActiveRecord::Migration
  def change
    add_column :user_facts, :friends, :text
    add_column :user_facts, :family, :text
  end
end
