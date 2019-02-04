require 'rails_helper'

RSpec.describe Tag, type: :model do

  before(:each) do
    @tag = Tag.create(title: 'sport')
  end

  context 'validation' do

    describe 'title' do

      it 'should be valid without title' do
        good_tag = Tag.create(title: 'hell')
        expect(good_tag.errors.include?(:title)).to eq(false)
      end
    end
  end

  context 'public instance methods' do
    describe 'tag' do
      it 'should return a string' do
        expect(@tag.title).to be_a(String)
      end
    end
  end
end
