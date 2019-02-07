FactoryBot.define do
  factory :private_message do
    recipient { FactoryBot.create(:user) }
    sender { FactoryBot.create(:user) }
    content { Faker::SiliconValley.quote }
  end
end
