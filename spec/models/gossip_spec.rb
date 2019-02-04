require 'rails_helper'

RSpec.describe Gossip, type: :model do

  before(:each) do
    @gossip = Gossip.create(title: 'random gossip', content: 'blablabla')
  end
  context 'validation' do
    describe 'content' do
      it 'should be valid without content' do
        good_gossip = Gossip.create(title: 'omg')
        expect(good_gossip.errors.include?(:content)).to eq(false)
      end
    end
  end

  context "public instance methods" do

    describe "#full_name" do

      it "should return a string" do
        puts @gossip.title.class
        expect(@gossip.title).to be_a(String)
      end
    end
  end
end
