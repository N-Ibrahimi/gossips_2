FactoryBot.define do
  factory :user do
   	first_name { Faker::Name.first_name }
  	last_name { Faker::Name.last_name }
  	description { Faker::Lorem.paragraph }
    email { Faker::Internet.email }
    age { rand(14..75) }
    city { FactoryBot.create(:city) }
  end
end
