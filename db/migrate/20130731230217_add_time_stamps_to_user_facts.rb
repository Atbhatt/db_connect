class AddTimeStampsToUserFacts < ActiveRecord::Migration
  def change
    add_column :user_facts, :created_at, :datetime
    add_column :user_facts, :updated_at, :datetime
  end
end
