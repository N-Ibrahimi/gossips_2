FactoryBot.define do
  factory :gossip do
    user { FactoryBot.create(:user) }
    title { Faker::Hipster.word}
    content { Faker::Hipster.paragraph }
  end
end
