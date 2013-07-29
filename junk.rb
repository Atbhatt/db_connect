##14990 - IS THE LAST ID WHERE DATA IS STORED ON THE USERFACT MODEL
#
##POSTS - DONE
#UserFact.where(:id => 4001..5000).each do |uf|
#  if uf.posts.empty?
#    puts "not post data for user_fact_id: #{uf.id}"
#  else
#    begin
#      uf.posts.scan(/@raw_attributes=(...*?)[^,]@/).each do |p|
#        k = p[0].gsub(/,$/, '')
#        c = eval(k)
#        if (c.include?("story") || c.include?("story_tags"))
#          Post.create(:user_id => uf.user_id, :user_fact_id => uf.id, :data => c.to_hstore)
#          puts "created post!"
#        else
#          puts "does not match criteria!"
#        end
#      end
#    rescue Exception => e
#      puts "invalid post for user_fact_id: #{uf.id}"
#    end
#  end
#end
#
##GAMES - DONE - START COUNT: 11394, END COUNT: 76194
#UserFact.where(:id => 14001..14899).each do |uf|
#  if uf.games.empty?
#    puts "no data for user_fact_id: #{uf.id}"
#  else
#    begin
#      uf.games.scan(/@raw_attributes=(...*?)[^,]@/).each do |p|
#        k = p[0].gsub(/,$/, '')
#        c = eval(k)
#        if c.include?("category")
#          Game.create(:user_id => uf.user_id, :user_fact_id => uf.id, :data => c.to_hstore)
#          puts "created games!"
#        else
#          puts "does not match criteria!"
#        end
#      end
#    rescue Exception => e
#      puts "invalid post for user_fact_id: #{uf.id}"
#      puts "exception #{e}"
#    end
#  end
#end
#
#
##BOOKS - DONE
#UserFact.where(:id => 14001..14899).each do |uf|
#  if uf.books.empty?
#    puts "no book data for user_fact_id: #{uf.id}"
#  else
#    begin
#      uf.books.scan(/@raw_attributes=(...*?)[^,]@/).each do |p|
#        k = p[0].gsub(/,$/, '')
#        c = eval(k)
#        if c.include?("category")
#          Book.create(:user_id => uf.user_id, :user_fact_id => uf.id, :data => c.to_hstore)
#          puts "created book!"
#        else
#          puts "does not match criteria!"
#        end
#      end
#    rescue Exception => e
#      puts "invalid post for user_fact_id: #{uf.id}"
#    end
#  end
#end
#
#
##TELEVISION - DONE (START COUNT 28745 - END COUNT 103366)
#UserFact.where(:id => 14002..14899).each do |uf|
#  if uf.television.empty?
#    puts "no data for user_fact_id: #{uf.id}"
#  else
#    begin
#      uf.television.scan(/@raw_attributes=(...*?)[^,]@/).each do |p|
#        k = p[0].gsub(/,$/, '')
#        c = eval(k)
#        if c.include?("category")
#          Television.create(:user_id => uf.user_id, :user_fact_id => uf.id, :data => c.to_hstore)
#          puts "created this!"
#        else
#          puts "does not match criteria!"
#        end
#      end
#    rescue Exception => e
#      puts "invalid post for user_fact_id: #{uf.id}"
#    end
#  end
#end
#
##MUSIC - DONE - START COUNT: 118012, END COUNT: 514824
#UserFact.where(:id => 14001..14899).each do |uf|
#  if uf.music.empty?
#    puts "no data for user_fact_id: #{uf.id}"
#  else
#    begin
#      uf.music.scan(/@raw_attributes=(...*?)[^,]@/).each do |p|
#        k = p[0].gsub(/,$/, '')
#        c = eval(k)
#        if c.include?("category")
#          Music.create(:user_id => uf.user_id, :user_fact_id => uf.id, :data => c.to_hstore)
#          puts "created music!"
#        else
#          puts "does not match criteria!"
#        end
#      end
#    rescue Exception => e
#      puts "invalid post for user_fact_id: #{uf.id}"
#      puts "exception #{e}"
#    end
#  end
#end
#
##MOVIES - DONE (START COUNT 46178, END COUNT 259269)
#UserFact.where(:id => 14001..14899).each do |uf|
#  if uf.movies.empty?
#    puts "no data for user_fact_id: #{uf.id}"
#  else
#    begin
#      uf.movies.scan(/@raw_attributes=(...*?)[^,]@/).each do |p|
#        k = p[0].gsub(/,$/, '')
#        c = eval(k)
#        if c.include?("category")
#          Movie.create(:user_id => uf.user_id, :user_fact_id => uf.id, :data => c.to_hstore)
#          puts "created movie!"
#        else
#          puts "does not match criteria!"
#        end
#      end
#    rescue Exception => e
#      puts "invalid post for user_fact_id: #{uf.id}"
#    end
#  end
#end
#__________________________________________________________________________
#
#
#
##LIKES - (START COUNT 550401)
##INCURRED ERROR FROM USER 40 to 1000 - REDO THIS!!!!!!!!!!!!!!!!!!!
#UserFact.where(:id => 40..50).each do |uf|
#  if uf.likes.empty?
#    puts "no data for user_fact_id: #{uf.id}"
#  else
#    begin
#      uf.likes.scan(/@raw_attributes=(...*?)[^,]@/).each do |p|
#        k = p[0].gsub(/,$/, '')
#        c = eval(k)
#        if c.include?("category")
#          Like.create(:user_id => uf.user_id, :user_fact_id => uf.id, :data => c.to_hstore)
#          puts "created this!"
#        else
#          puts "does not match criteria!"
#        end
#      end
#    rescue Exception => e
#      puts "invalid post for user_fact_id: #{uf.id}"
#    end
#  end
#end
#
