# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

puts "*** Started at #{Time.now} ***"
puts

# DESTROY SECTION - Uncomment to truncate all SQLite tables + anihilate all created objects + empty tmp tables
puts "[DESTROY SECTION - BEGIN]"
puts "  > Destroying objects and deleting from tables"
City.destroy_all
PrivateMessage.destroy_all
User.destroy_all
GossipTag.destroy_all
Gossip.destroy_all
Tag.destroy_all
Like.destroy_all
Comment.destroy_all
puts "  > Initializing arrays as []"
my_cities = []
my_private_messsages = []
my_users = []
my_gossip_tags = []
my_gossips = []
my_tags = []
my_likes = []
my_comments = []
puts "[DESTROY SECTION - END]"
puts

# POPULATE SECTION - Notice: order of population may be structuring (cannot load data into 'appointments' before 'doctors' and 'patients' exist ;-)
puts "[POPULATE SECTION - BEGIN]"

# 01 - Populate 'my_cities'
puts "  > Populating 'my_cities'"
100.times do
	my_cities << City.create(city_name: Faker::Address.city, 
                           zip_code: Faker::Address.zip)
end

# 02 - Populate 'my_users'
puts "  > Populating 'my_users'"
100.times do |n|
	my_users << User.create(first_name: Faker::Name.first_name, 
                          last_name: Faker::Name.last_name,
                          nickname: Faker::Superhero.name,
                          gender: Faker::Demographic.sex,
                          birthdate: Faker::Date.between(from: '1978-03-27', to: '2014-07-14'),
                          age: (Date.today.year - birthdate.year),
                          is_adult: (age>=18), 
                          city_id: my_cities[rand(0...my_cities.length)].id)
end

# 03 - Populates 'my_private_messages'

# 04 - Populate 'my_gossips'

# 05 - Populate 'my_tags'

# 06 - Populate 'my_gossip_tags'

# 07 - Populate 'my_comments'

# 08 - Populate 'my_likes'



puts "[POPULATE SECTION - END]"

puts
puts "*** Ended at #{Time.now} ***"