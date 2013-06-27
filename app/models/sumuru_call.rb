class SumuruCall < ActiveRecord::Base
  self.abstract_class = true
  establish_connection 'sumuru_db'
end
