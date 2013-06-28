class SumuruCall < ActiveRecord::Base
  self.abstract_class = true
  #puts "#{__FILE__}:#{__LINE__}ENV DUB", ENV['DUB']
  if ENV['DUB']
    establish_connection(
      :adapter => 'postgresql',
      :database => "#{ENV['DUB']}",
      :username => "#{ENV['DUB_UN']}",
      :password => "#{ENV['DUB_PWD']}",
      :host => "#{ENV['DUB_HOST']}",
      :port => "#{ENV['DUB_PORT']}")
  else
    establish_connection(
      :adapter => "postgresql",
      :database => "d14m3t0ljark4i",
      :username => "ud9lu32qsk4bht",
      :password => "pb0gh4fovd2vb0febgruu3tg3rv",
      :host => "ec2-54-214-28-104.us-west-2.compute.amazonaws.com",
      :port => "5472")
  end
end

