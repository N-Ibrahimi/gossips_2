require 'rails_helper'

RSpec.describe PrivateMessage, type: :model do

  before(:each) do
    @pm = PrivateMessage.create(content: 'hellO_world')
  end

  context 'public instance methods' do
    describe 'pm' do
      it 'should return a string' do
        expect(@pm.content).to be_a(String)
      end
    end
  end
end
