class AddColumnsToUserFacts < ActiveRecord::Migration
  def change
    add_column :user_facts, :latitude, :string
    add_column :user_facts, :longitude, :string
    add_column :user_facts, :birthday, :string
    add_column :user_facts, :gender, :string
    add_column :user_facts, :city, :string
    add_column :user_facts, :state, :string
    add_column :user_facts, :country, :string
    add_column :user_facts, :email, :string
    add_column :user_facts, :access_token, :string
    add_column :user_facts, :name, :string
    remove_column :user_facts, :books
    remove_column :user_facts, :games
    remove_column :user_facts, :television
    remove_column :user_facts, :posts
    remove_column :user_facts, :friends
  end
end
