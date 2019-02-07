FactoryBot.define do
  factory :comment do
  	gossip { FactoryBot.create(:gossip) }
    user { FactoryBot.create(:user) }
    content { Faker::SiliconValley.quote }
  end
end
