require 'rails_helper'

describe Keyword do
  let(:keyword) {keyword.new}
  it "can creat an instance of itself" do
    expect(keyword).to be_a_keyword
  end 
end