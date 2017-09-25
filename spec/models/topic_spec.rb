require 'rails_helper'

RSpec.describe Topic, type: :model do

  describe 'associations' do
      it { should have_many(:comments) }
      it { should belong_to(:sub) }
  end

  # describe 'associations' do
  #
  # end
end 
