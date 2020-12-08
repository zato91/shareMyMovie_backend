require 'rails_helper'

RSpec.describe User, type: :model do
  context "validation tests" do

    it 'ensure username presence' do

      user = User.new(password: "test").save
      expect(user).to eq(false)
    end

    it 'ensure password presence'do
      user = User.new(username: "test").save
      expect(user).to eq(false)
    end
    
   
    before { User.create!(username: 'john@home.xyz', password:'test') }
      it 'is invalid if the email is not unique' do
      expect(subject).to be_invalid
    end
 

  end 
end
