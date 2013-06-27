class User < ActiveRecord::Base
  #establish_connection (
  #  :adapter  => "mysql",
  #  :host     => "localhost",
  #  :username => "myuser",
  #  :password => "mypass",
  #  :database => "somedatabase"
  #)


  def get_data
    userData = FbGraph::User.fetch(self.facebook_user_id, :access_token => self.access_token)
    UserFact.create(
      :graph_data => userData.to_s,
      :likes => userData.likes.to_s,
      :books => userData.books.to_s,
      :music => userData.music.to_s,
      :movies => userData.movies.to_s,
      :television => userData.television.to_s,
      :posts => userData.posts.to_s,
      :links => userData.links.to_s,
      :games => userData.games.to_s
      )
  end
end
