class User < ActiveRecord::Base

  #ActiveRecord::Base.establish_connection 'primary'

  def self.pool_data
    User.all.each do |record|
      UserFact.get_data(record)
    end
  end
end
