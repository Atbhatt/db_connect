class Working::SumuruCall < ActiveRecord::Base
  self.abstract_class = true
  if ENV['DUB']
    establish_connection(
      :adapter => 'postgresql',
      :database => "#{ENV['DUB']}",
      :username => "#{ENV['DUB_UN']}",
      :password => "#{ENV['DUB_PWD']}",
      :host => "#{ENV['DUB_HOST']}",
      :port => "#{ENV['DUB_PORT']}")
  else
    establish_connection 'sumuru'
  end
end

