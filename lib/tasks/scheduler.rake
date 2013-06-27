desc "This task is called by the Heroku scheduler add-on"
task :update_user_facts => :environment do
  puts "Store user fact data - start"
  User.pull_data
  puts "Store user fact data - complete"
end
