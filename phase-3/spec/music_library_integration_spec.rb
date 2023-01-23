
require 'music_library'
require 'track'

describe do
  before(:each) do
    @music_library = MusicLibrary.new
    @fake_track_1 = double(:fake_track1, title: "The World Is Yours", artist: "SoFaygo")
    @fake_track_2 = double(:fake_track2, title: "Cloudy Skies", artist: "Lil Skies")
    @music_library.add(@fake_track1)
    @music_library.add(@fake_track2)
  end

  it "returns all tracks" do
    result = @music_library.all()
    expect(result).to eq [@fake_track1,@fake_track2]
  end

  it "searches for the keyword 'Yours' and returns the matched track" do
    result = @music_library.search('Yours')
    expect(result).to eq [@fake_track1]
  end


end