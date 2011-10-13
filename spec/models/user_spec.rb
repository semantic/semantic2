require 'spec_helper'

describe User do
  describe 'factory' do
    it 'should generate a valid user' do
      Factory.build(:user).should be_valid
    end
  end
end
