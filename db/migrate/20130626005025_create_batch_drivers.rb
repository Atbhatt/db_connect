class CreateBatchDrivers < ActiveRecord::Migration
  def change
    create_table :batch_drivers do |t|
      t.string :job
      t.string :key
    end
  end
end
