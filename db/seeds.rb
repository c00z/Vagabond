p "Hello from seeds.rb"

Post.delete_all
Location.delete_all
Activity.delete_all

rj = User.first
ricky = User.second
zach = User.third
cb = User.fourth

rj.avatar = File.open("#{Rails.root}/app/assets/images/rj.jpg")
ricky.avatar = File.open("#{Rails.root}/app/assets/images/ricky.jpg")
zach.avatar = File.open("#{Rails.root}/app/assets/images/zach.jpg")
cb.avatar = File.open("#{Rails.root}/app/assets/images/cb.jpg")

rj.save
ricky.save
zach.save
cb.save

# Create locations and save their image avatars
first = Location.create({name: "San Francisco"})
second = Location.create({name: "London"})
third = Location.create({name: "Gibraltar"})
fourth = Location.create({name: "Tokyo"})
first.avatar = File.open("#{Rails.root}/app/assets/images/SF.gif")
second.avatar = File.open("#{Rails.root}/app/assets/images/London.gif")
third.avatar = File.open("#{Rails.root}/app/assets/images/Gibraltar.gif")
fourth.avatar = File.open("#{Rails.root}/app/assets/images/Tokyo.gif")
first.save
second.save
third.save
fourth.save

# Create Activities and save their image avatars
business = Activity.new({name: "Business"})
culture = Activity.new({name: "Arts and Culture"})
cycling = Activity.new({name: "Cycling"})
family = Activity.new({name: "Family Fun"})
hiking = Activity.new({name: "Hiking and Walking"})
nightlife = Activity.new({name: "Nightlife"})
outdoors = Activity.new({name: "Outdoor Adventure"})
pets = Activity.new({name: "Pets"})
relaxing = Activity.new({name: "Relaxing"})
romance = Activity.new({name: "Romance"})
sightseeing = Activity.new({name: "Sightseeing"})
singles = Activity.new({name: "Singles"})

business.avatar = File.open("#{Rails.root}/app/assets/images/business.jpg")
culture.avatar = File.open("#{Rails.root}/app/assets/images/culture.jpg")
cycling.avatar = File.open("#{Rails.root}/app/assets/images/cycling.jpeg")
family.avatar = File.open("#{Rails.root}/app/assets/images/family.jpg")
hiking.avatar = File.open("#{Rails.root}/app/assets/images/hiking.jpg")
nightlife.avatar = File.open("#{Rails.root}/app/assets/images/nightlife.jpg")
outdoors.avatar = File.open("#{Rails.root}/app/assets/images/outdoors.jpg")
pets.avatar = File.open("#{Rails.root}/app/assets/images/pets.jpeg")
relaxing.avatar = File.open("#{Rails.root}/app/assets/images/relaxing.jpg")
romance.avatar = File.open("#{Rails.root}/app/assets/images/romance.jpg")
sightseeing.avatar = File.open("#{Rails.root}/app/assets/images/sightseeing.jpg")
singles.avatar = File.open("#{Rails.root}/app/assets/images/singles.jpg")

business.save
culture.save
cycling.save
family.save
hiking.save
nightlife.save
outdoors.save
pets.save
relaxing.save
romance.save
sightseeing.save
singles.save

# Create Posts
posts_data = [
{:title=>FFaker::Book.title, :content=>FFaker::CheesyLingo.paragraph, :user=> User.first, :location=> Location.first, :addr=>"225 Bush St San Francisco CA"},
{:title=>FFaker::Book.title, :content=>FFaker::CheesyLingo.paragraph, :user=> User.first, :location=> Location.first, :addr=>"1600 Pennsylvania Ave Washington DC"},
{:title=>FFaker::Book.title, :content=>FFaker::CheesyLingo.paragraph, :user=> User.second, :location=> Location.first, :addr=>"1010 Anza Street San Francisco CA"},
{:title=>FFaker::Book.title, :content=>FFaker::CheesyLingo.paragraph, :user=> User.third, :location=> Location.first, :addr=>"15 Lincoln Way San Francisco CA"},
{:title=>FFaker::Book.title, :content=>FFaker::CheesyLingo.paragraph, :user=> User.fourth, :location=> Location.first, :addr=>"112 San Carlos St San Francisco CA"},
{:title=>FFaker::Book.title, :content=>FFaker::CheesyLingo.paragraph, :user=> User.first, :location=> Location.second, :addr=>"11 Wall Street New York, NY"},
{:title=>FFaker::Book.title, :content=>FFaker::CheesyLingo.paragraph, :user=> User.first, :location=> Location.second, :addr=>"350 Fifth Avenue New York, NY 10118"},
{:title=>FFaker::Book.title, :content=>FFaker::CheesyLingo.paragraph, :user=> User.second, :location=> Location.second, :addr=>"221 B Baker St, London, England"},
{:title=>FFaker::Book.title, :content=>FFaker::CheesyLingo.paragraph, :user=> User.second, :location=> Location.second, :addr=>"Tour Eiffel Champ de Mars, Paris"},
{:title=>FFaker::Book.title, :content=>FFaker::CheesyLingo.paragraph, :user=> User.third, :location=> Location.second, :addr=>"4059 Mt Lee Dr. Hollywood, CA 90068"},
{:title=>FFaker::Book.title, :content=>FFaker::CheesyLingo.paragraph, :user=> User.fourth, :location=> Location.second, :addr=>"Buckingham Palace, London, England"},
{:title=>FFaker::Book.title, :content=>FFaker::CheesyLingo.paragraph, :user=> User.first, :location=> Location.third, :addr=>"Statue of Liberty, Liberty Island New York, NY 10004"},
{:title=>FFaker::Book.title, :content=>FFaker::CheesyLingo.paragraph, :user=> User.first, :location=> Location.third, :addr=>"Manager Square, Bethlehem, West Bank"},
{:title=>FFaker::Book.title, :content=>FFaker::CheesyLingo.paragraph, :user=> User.second, :location=> Location.third, :addr=>"2 Macquarie Street, Sydney"},
{:title=>FFaker::Book.title, :content=>FFaker::CheesyLingo.paragraph, :user=> User.second, :location=> Location.third, :addr=>"4-2-8 Shiba-Koen, Tokyo, 13 105-0011, Japan"},
{:title=>FFaker::Book.title, :content=>FFaker::CheesyLingo.paragraph, :user=> User.third, :location=> Location.third, :addr=>"5-17-3 Shinjuku, Tokyo, Japan"},
{:title=>FFaker::Book.title, :content=>FFaker::CheesyLingo.paragraph, :user=> User.fourth, :location=> Location.third, :addr=>"Kaminarimon, Taito-ku, Tokyo, 111-0034, Japan"},
{:title=>FFaker::Book.title, :content=>FFaker::CheesyLingo.paragraph, :user=> User.fourth, :location=> Location.third, :addr=>"225 Bush St San Francisco CA"},
{:title=>FFaker::Book.title, :content=>FFaker::CheesyLingo.paragraph, :user=> User.first, :location=> Location.fourth, :addr=>"221 B Baker St, London, England"},
{:title=>FFaker::Book.title, :content=>FFaker::CheesyLingo.paragraph, :user=> User.first, :location=> Location.fourth, :addr=>"2400 Durant Ave Berkeley CA"},
{:title=>FFaker::Book.title, :content=>FFaker::CheesyLingo.paragraph, :user=> User.second, :location=> Location.fourth, :addr=>"870 Grove St San Francisco CA"},
{:title=>FFaker::Book.title, :content=>FFaker::CheesyLingo.paragraph, :user=> User.second, :location=> Location.fourth, :addr=>"17 Charlotte Street, London W1T 1RJ, England"},
{:title=>FFaker::Book.title, :content=>FFaker::CheesyLingo.paragraph, :user=> User.third, :location=> Location.fourth, :addr=>"1010 Anza Street San Francisco CA"},
{:title=>FFaker::Book.title, :content=>FFaker::CheesyLingo.paragraph, :user=> User.third, :location=> Location.fourth, :addr=>"11 Wall Street New York, NY"},
{:title=>FFaker::Book.title, :content=>FFaker::CheesyLingo.paragraph, :user=> User.fourth, :location=> Location.fourth, :addr=>"1600 Pennsylvania Ave Washington DC"}
]

Post.create(posts_data)

Post.all.each do |p|
  p.activities.push(Activity.order('RANDOM()').limit(3))
end


p Post.first.activities
p "Goodbye from seeds.rb"
