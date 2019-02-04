require 'rails_helper'

RSpec.describe City, type: :model do

  before(:each) do
    @city = City.create(name: 'Miami', zip_code: '33101')
  end
    context 'validation' do
      describe 'name' do
        it 'should be valid without name' do
          bad_city = City.create(zip_code: '33101')
          expect(bad_city.errors.include?(:name)).to eq(false)
        end
      end
    end

    context 'public instance methods' do
      describe 'city' do
        it 'should return a string' do
          expect(@city.name).to be_a(String)
        end
      end
    end
end
