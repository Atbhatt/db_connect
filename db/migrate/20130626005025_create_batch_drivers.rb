class CreateBatchDrivers < ActiveRecord::Migration
  ActiveRecord::Base.establish_connection "#{Rails.env}"

  def change
    create_table :batch_drivers do |t|
      t.string :job
      t.string :key
    end
  end
end
