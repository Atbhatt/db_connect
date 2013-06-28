class UserFact < ActiveRecord::Base

  #establish_connection "#{ENV['DATABASE_URL'] || Rails.env } "
  #establish_connection "#{Rails.env}_db"

  def self.get_data(user)
    begin
      user_data = FbGraph::User.fetch(user.facebook_user_id, :access_token => user.access_token)
      UserFact.create(
        :user_id => user.id,
        :facebook_user_id => user.facebook_user_id,
        :graph_data => user_data.to_s,
        :likes => user_data.likes.to_s,
        :books => user_data.books.to_s,
        :music => user_data.music.to_s,
        :movies => user_data.movies.to_s,
        :television => user_data.television.to_s,
        :posts => user_data.posts.to_s,
        :links => user_data.links.to_s,
        :games => user_data.games.to_s
      )
      BatchDriver.find_by_job('UpdateUserFacts').update_attributes(:key => user.updated_at)
    rescue FbGraph::InvalidToken => e
      puts "Invalid Token for #{user.facebook_user_id}"
    end
  end
end
