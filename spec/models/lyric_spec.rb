require 'rails_helper'

describe Lyric do
  let(:lyric) {Lyric.new}
  it "can creat an instance of itself" do
    expect(lyric).to be_a_lyric
  end 
end