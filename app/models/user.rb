class User < SumuruCall
  def self.pull_data
    User.where('updated_at > ?', BatchDriver.find_by_job('UpdateUserFacts').key).each do |user|
      UserFact.get_data(user)
    end
  end
end
