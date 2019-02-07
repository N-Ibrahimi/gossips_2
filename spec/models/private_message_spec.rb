require 'rails_helper'

RSpec.describe PrivateMessage, type: :model do

	before(:each) do 
		@private_message = FactoryBot.create(:private_message)  	
  end

  it "has a valid factory" do
    expect(build(:private_message)).to be_valid
  end

  context "validation" do
    it "is valid with valid attributes" do
      expect(@private_message).to be_a(PrivateMessage)
    end
		describe "#content" do
      it { expect(@private_message).to validate_presence_of(:content) }
		end
  end

  context "associations" do
    it { expect(@private_message).to belong_to(:recipient) }
    it { expect(@private_message).to belong_to(:sender) }
  end

end
