class AddColumnFacebookIdToUserFact < ActiveRecord::Migration
  def change
    add_column :user_facts, :facebook_user_id, :string
  end
end
