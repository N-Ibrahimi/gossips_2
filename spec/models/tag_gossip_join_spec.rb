require 'rails_helper'

RSpec.describe TagGossipJoin, type: :model do

  before(:each) do 
		@tag_gossip_join = FactoryBot.create(:tag_gossip_join)  	
  end

  it "has a valid factory" do
    expect(build(:tag_gossip_join)).to be_valid
  end

  context "validation" do
    it "is valid with valid attributes" do
      expect(@tag_gossip_join).to be_a(TagGossipJoin)
    end
  end

  context "associations" do
    it { expect(@tag_gossip_join).to belong_to(:tag) }
    it { expect(@tag_gossip_join).to belong_to(:gossip) }
  end

end
