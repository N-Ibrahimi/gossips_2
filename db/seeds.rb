# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


puts "Ecriture de la base de données..."
sleep(2)

10.times do
	city = City.new
	city.name = Faker::Beer.name
	city.zip_code = Faker::Address.zip_code
	city.save
end

10.times do
	tag = Tag.new
	tag.title = Faker::Beer.style
	tag.save
end

20.times do
  user = User.new
  first_name = Faker::Name.unique.first_name
  user.first_name = first_name
  user.last_name = Faker::Name.unique.last_name
  user.email = Faker::Internet.unique.safe_email(first_name)
  user.age = rand(15..65)
  user.description = Faker::GreekPhilosophers.quote
  user.city = City.all.sample
  user.save
end

30.times do
	gossip = Gossip.new
	gossip.title = Faker::Bank.name
	gossip.content = Faker::Dune.quote
	gossip.user = User.all.sample
	gossip.save
end

Gossip.all.count.times do |index|
	gossip = Gossip.all[index]
	gossip.tags << Tag.all.sample(3)
end

40.times do
	pm = PrivateMessage.new
	pm.content = Faker::Hipster.sentence
	pm.sender = User.all.sample
	pm.recipient = User.all.sample
	pm.save
end