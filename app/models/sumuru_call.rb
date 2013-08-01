class SumuruCall < ActiveRecord::Base
  self.abstract_class = true
  establish_connection(
    ENV['USER_SOURCE_DATA'] ||
      :adapter => "postgresql",
    :database => "d14m3t0ljark4i",
    :username => "ud9lu32qsk4bht",
    :password => "pb0gh4fovd2vb0febgruu3tg3rv",
    :host => "ec2-54-214-28-104.us-west-2.compute.amazonaws.com",
    :port => "5472"
  )
end
