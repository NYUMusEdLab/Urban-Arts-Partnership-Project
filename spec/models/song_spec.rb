require 'rails_helper'

describe Song do
  let(:song) {Song.create(title:"geography")}

  it "can creat an instance of itself" do
    expect(song).to be_a_song
  end 

  it "can create a keyword" do 
    song.keywords.create(:name => "history", definition: "it's important")
    expect(song.keywords.first.name).to eq("history") 
  end
end