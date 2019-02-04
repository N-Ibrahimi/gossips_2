require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @user = User.create(first_name: 'john', last_name: 'Doe', email: 'johndoe@mail.com', age: 42, description: 'tall')
  end

  context 'validation' do

    describe 'first_name' do

      it 'should be correct without first_name' do
        good_user = User.create(last_name: 'Doe')
        expect(good_user.errors.include?(:first_name)).to eq(false)
      end
    end
  end

  context 'public instance methods' do
    describe 'user' do
      it 'should return a string' do
        expect(@user.first_name).to be_a(String)
      end
    end
  end
end