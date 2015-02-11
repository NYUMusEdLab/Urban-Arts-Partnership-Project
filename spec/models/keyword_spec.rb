require 'rails_helper'

describe Keyword do
  let(:keyword) {keyword.new}
  let()
  it "can creat an instance of itself" do
    expect(keyword).to be_a_keyword
  end 
  it "has many comments" do
    expect(keyword.comments).to eq{} 
  end
end 