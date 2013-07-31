class UpdateColumnBirthdayUserFacts < ActiveRecord::Migration
  def change
    remove_column :user_facts, :birthday
    add_column :user_facts, :birthday, :date
  end
end
