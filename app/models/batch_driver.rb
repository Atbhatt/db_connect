class BatchDriver < ActiveRecord::Base

  establish_connection "#{ENV['DATABASE_URL']}"
  ActiveRecord::Base.initialize_schema_migrations_table
end
