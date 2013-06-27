class BatchDriver < ActiveRecord::Base
  establish_connection "#{Rails.env}"
end
