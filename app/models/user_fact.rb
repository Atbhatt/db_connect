class UserFact < ActiveRecord::Base
  has_many :friends
  has_many :likes

  def self.get_data(user)
    if UserFact.where("user_id = ?", user.id).exists?
      puts "User #{user.id} already exists"
    else
      begin
        user_data = FbGraph::User.fetch(user.facebook_user_id, :access_token => user.access_token)
        UserFact.create(
          :user_id => user.id,
          :facebook_user_id => user.facebook_user_id,
          :name => user.name,
          :access_token => user.access_token,
          :email => user.email,
          :birthday => user.birthday,
          :gender => user.gender,
          :city => user.city,
          :state => user.state,
          :country => user.country,
          :latitude => user.latitude,
          :longitude => user.longitude,
        )

        self.data_populate(user.id, UserFact.where("user_id =?", user.id).last.id, user_data)

        BatchDriver.find_by_job('UpdateUserFacts').update_attributes(:key => user.updated_at)
      rescue FbGraph::InvalidToken => e
        puts "Invalid Token for #{user.facebook_user_id}"
      end
    end
  end

  DATA_FIELDS = %w[friends likes books music movies television posts links games]

  def self.data_populate(user_id, user_facts_id, user_data)
    DATA_FIELDS.each do |data_field|
      class_name = data_field.classify.constantize
      unless user_data.send(data_field).empty?
        user_data.send(data_field).each do |specific_data|
          class_name.create({:user_id => user_id, :user_fact_id => user_facts_id, :data => specific_data.raw_attributes.to_hstore})
        end
      end
    end
  end
end
