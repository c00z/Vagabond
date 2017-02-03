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
{:title=>FFaker::Book.title, :content=>FFaker::CheesyLingo.paragraph, :user=> User.first, :location=> Location.first},
{:title=>FFaker::Book.title, :content=>FFaker::CheesyLingo.paragraph, :user=> User.first, :location=> Location.first},
{:title=>FFaker::Book.title, :content=>FFaker::CheesyLingo.paragraph, :user=> User.first, :location=> Location.first},
{:title=>FFaker::Book.title, :content=>FFaker::CheesyLingo.paragraph, :user=> User.first, :location=> Location.first},
{:title=>FFaker::Book.title, :content=>FFaker::CheesyLingo.paragraph, :user=> User.first, :location=> Location.first},
{:title=>FFaker::Book.title, :content=>FFaker::CheesyLingo.paragraph, :user=> User.first, :location=> Location.second},
{:title=>FFaker::Book.title, :content=>FFaker::CheesyLingo.paragraph, :user=> User.first, :location=> Location.second},
{:title=>FFaker::Book.title, :content=>FFaker::CheesyLingo.paragraph, :user=> User.first, :location=> Location.second},
{:title=>FFaker::Book.title, :content=>FFaker::CheesyLingo.paragraph, :user=> User.first, :location=> Location.second},
{:title=>FFaker::Book.title, :content=>FFaker::CheesyLingo.paragraph, :user=> User.first, :location=> Location.second},
{:title=>FFaker::Book.title, :content=>FFaker::CheesyLingo.paragraph, :user=> User.first, :location=> Location.second},
{:title=>FFaker::Book.title, :content=>FFaker::CheesyLingo.paragraph, :user=> User.first, :location=> Location.third},
{:title=>FFaker::Book.title, :content=>FFaker::CheesyLingo.paragraph, :user=> User.first, :location=> Location.third},
{:title=>FFaker::Book.title, :content=>FFaker::CheesyLingo.paragraph, :user=> User.first, :location=> Location.third},
{:title=>FFaker::Book.title, :content=>FFaker::CheesyLingo.paragraph, :user=> User.first, :location=> Location.third},
{:title=>FFaker::Book.title, :content=>FFaker::CheesyLingo.paragraph, :user=> User.first, :location=> Location.third},
{:title=>FFaker::Book.title, :content=>FFaker::CheesyLingo.paragraph, :user=> User.first, :location=> Location.third},
{:title=>FFaker::Book.title, :content=>FFaker::CheesyLingo.paragraph, :user=> User.first, :location=> Location.third},
{:title=>FFaker::Book.title, :content=>FFaker::CheesyLingo.paragraph, :user=> User.first, :location=> Location.fourth},
{:title=>FFaker::Book.title, :content=>FFaker::CheesyLingo.paragraph, :user=> User.first, :location=> Location.fourth},
{:title=>FFaker::Book.title, :content=>FFaker::CheesyLingo.paragraph, :user=> User.first, :location=> Location.fourth},
{:title=>FFaker::Book.title, :content=>FFaker::CheesyLingo.paragraph, :user=> User.first, :location=> Location.fourth},
{:title=>FFaker::Book.title, :content=>FFaker::CheesyLingo.paragraph, :user=> User.first, :location=> Location.fourth},
{:title=>FFaker::Book.title, :content=>FFaker::CheesyLingo.paragraph, :user=> User.first, :location=> Location.fourth},
{:title=>FFaker::Book.title, :content=>FFaker::CheesyLingo.paragraph, :user=> User.first, :location=> Location.fourth}
]

post = Post.create(posts_data)
puts post[0].title

#
# Post.delete_all
#  posts = []
# 10.times do |i|
#   posts<<(
#     {:title=>FFaker::Book.title,
#      :content=>FFaker::BaconIpsum.paragraphs})
# end
# Post.create([posts])
