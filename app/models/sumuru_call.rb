class SumuruCall < ActiveRecord::Base
  self.abstract_class = true
  ActiveRecord::Base.establish_connection 'sumuru_db'
end
