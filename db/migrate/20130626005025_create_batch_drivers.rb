class CreateBatchDrivers < ActiveRecord::Migration
  ActiveRecord::Base.establish_connection "#{ENV['DATABASE_URL']}"

  def change
    create_table :batch_drivers do |t|
      t.string :job
      t.string :key
    end
  end
end
