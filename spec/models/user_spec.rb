require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryGirl.create(:user)
  end

  describe "creation" do
  	it "can be created" do
  		expect(@user).to be_valid
  	end
    it "can not be created" do
      @user.first_name = nil
  		expect(@user).to_not be_valid
  	end
  end

  describe "custom name methods" do
    it 'has a full name method that combines first and last name' do
      expect(@user.full_name).to eq("SNOW, JON")
    end
  end
end
