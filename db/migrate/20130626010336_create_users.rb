class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :facebook_user_id
      t.string :gender
      t.string :city
      t.string :state
      t.string :country
      t.date :birthday
      t.string :email
      t.string :access_token
      t.hstore :data
    end
  end
end
