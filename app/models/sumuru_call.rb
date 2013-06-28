class SumuruCall < ActiveRecord::Base
  self.abstract_class = true
  ActiveRecord::Base.establish_connection(
    :adapter => 'postgresql',
    :database => "#{ENV['DUB']}",
    :username => "#{ENV['DUB_UN']}",
    :password => "#{ENV['DUB_PWD']}",
    :host => "#{ENV['DUB_HOST']}",
    :port => "#{ENV['DUB_PORT']}",
  )

  #establish_connection 'sumuru'
end
