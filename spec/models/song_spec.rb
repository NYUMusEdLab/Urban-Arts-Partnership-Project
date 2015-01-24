describe Song do
  let(:song) {Song.new}
  it "can creat an instance of itself" do
    expect(song).to be_a_song
  end 
end