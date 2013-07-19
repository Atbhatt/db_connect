class DropTableFamily < ActiveRecord::Migration
  def change
    drop_table :familys
  end
end
