class CreateBatchDrivers < ActiveRecord::Migration
  def change
    ActiveRecord::Base.establish_connection "#{Rails.env}"
    create_table :batch_drivers do |t|
      t.string :job
      t.string :key
    end
  end
end
