p "Hello from seeds.rb"

# Speaker.delete_all
#
# speakers_data = [
#     {:first=>"Cory", :last=>"Fauver", :email=>"cory@example.com"},
#     {:first=>"Brianna", :last=>"Veenstra", :email=>"brianna@example.com"},
#     {:first=>"Matt", :last=>"Laguardia", :email=>"matt@example.com"},
#     {:first=>"Ilias", :last=>"Tsangaris", :email=>"ilias@example.com"},
#     {:first=>FFaker::Name.first_name, :last=>FFaker::Name.last_name, :email=>FFaker::Internet.email},
#     {:first=>FFaker::Name.first_name, :last=>FFaker::Name.last_name, :email=>FFaker::Internet.email},
#     {:first=>FFaker::Name.first_name, :last=>FFaker::Name.last_name, :email=>FFaker::Internet.email},
#     {:first=>FFaker::Name.first_name, :last=>FFaker::Name.last_name, :email=>FFaker::Internet.email},
#     {:first=>FFaker::Name.first_name, :last=>FFaker::Name.last_name, :email=>FFaker::Internet.email}
# ]
#
# Speaker.create(speakers_data)

Post.delete_all
Location.delete_all


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

post = Post.create(posts_data)
post.each do |post|
  p post.latitude
end

#
# Post.delete_all
#  posts = []
# 10.times do |i|
#   posts<<(
#     {:title=>FFaker::Book.title,
#      :content=>FFaker::BaconIpsum.paragraphs})
# end
# Post.create([posts])
