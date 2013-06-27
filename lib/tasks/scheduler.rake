desc "This task is called by the Heroku scheduler add-on"
task :update_feed => :environment do
  puts "Trigger User.pull_data"
  User.pull_data
  puts "User pull data complete."
end
