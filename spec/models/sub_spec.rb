require 'rails_helper'

RSpec.describe Sub, type: :model do

  describe 'associations' do
      it { should have_many(:topics) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
  end



  describe '#name' do
    it 'returns the sub name' do
      name = Name.create(name: "test")
      expect(name).to eq("#{name}")
    end
  end





end
