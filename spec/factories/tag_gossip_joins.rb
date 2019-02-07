FactoryBot.define do
  factory :tag_gossip_join do
    tag { FactoryBot.create(:tag) }
    gossip { FactoryBot.create(:gossip) }
  end
end
