require 'rails_helper'

RSpec.describe User, type: :model do
  context "validation tests" do

    it 'ensure username presence' do

      user = User.new(username: "test").save
      expect(user).to eq(false)
    end

    # it 'ensure password presence'do
      # user = User.new(username: "test").save
      # expect(user).to eq(false)
    # end
    
    # it 'ensure username uniq' do
    # end 
 

  end 
end
