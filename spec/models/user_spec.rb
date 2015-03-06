require 'rails_helper'

RSpec.describe User, :type => :model do
  let(:user) {User.create(password: "123")}
  pending "add some examples to (or delete) #{__FILE__}"
  it "can create a user" do 
    user
  end
  it "has a password" do 
    expect(user.password).to eq("123")
  end
end
