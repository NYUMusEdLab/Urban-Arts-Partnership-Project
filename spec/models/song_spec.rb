require 'rails_helper'

describe Song do
  let(:song) {Song.new}
  it "can creat an instance of itself" do
    expect(song).to be_a_song
  end 

  it "has many lyrics" do 
    expect(song).respond_to "lyrics"
  end
end