class User < Working::SumuruCall
  def self.pull_data
    User.where('updated_at > ?', 5.minutes.ago).each do |user|
      UserFact.get_data(user)
    end
  end
end
