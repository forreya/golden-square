
require 'music_library'
require 'track'

describe do
  before(:each) do
    @music_library = MusicLibrary.new
    @music_library.add(double(:fake_track))
    @music_library.add(double(:fake_track2))
  end

  it "adds a track to the music library then returns the track" do
    @music_library.all
  end
end