class CreateBatchDrivers < ActiveRecord::Migration
  def connection
    @connection ||= ActiveRecord::Base.establish_connection("#{Rails.env}").connection
  end

  def change
    create_table :batch_drivers do |t|
      t.string :job
      t.string :key
    end

    @connection = ActiveRecord::Base.establish_connection("#{Rails.env}").connection
  end
end
