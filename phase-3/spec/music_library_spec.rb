
require 'music_library'

describe MusicLibrary do
  before(:each) do
    @music_library = MusicLibrary.new
    @fake_track_1 = double(:fake_track1, matches?: true)
    @fake_track_2 = double(:fake_track2, matches?: false)
    @music_library.add(@fake_track_1)
    @music_library.add(@fake_track_2)
  end

  it "returns all tracks" do
    result = @music_library.all()
    expect(result).to eq [@fake_track_1,@fake_track_2]
  end

  it "searches for the keyword 'Yours' and returns the matched track" do
    result = @music_library.search('Yours')
    expect(result).to eq [@fake_track_1]
  end

  it "searches for the keyword 'SoFaygo' and returns the matched track" do
    result = @music_library.search('SoFaygo')
    expect(result).to eq [@fake_track_1]
  end
  
end