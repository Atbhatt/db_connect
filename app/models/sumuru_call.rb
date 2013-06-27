class SumuruCall < ActiveRecord::Base
  self.abstract_class = true
  ActiveRecord::Base.establish_connection(
    :database => "#{ENV['DUB']}",
    :username => "#{ENV['DUB_UN']}",
    :password => "#{ENV['DUB_PWD']}",
    :host => "#{ENV['DUB_HOST']}",
    :port => "#{ENV['DUB_PORT']}",
  )
end