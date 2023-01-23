
require 'music_library'
require 'track'

describe 'integration' do
  before(:each) do
    @music_library = MusicLibrary.new
    @track1 = Track.new("The World Is Yours", "SoFaygo")
    @track2 = Track.new("Cloudy Skies", "Lil Skies")
    @music_library.add(@track1)
    @music_library.add(@track2)
  end

  it "returns all tracks" do
    result = @music_library.all()
    expect(result).to eq [@track1,@track2]
  end

  it "searches for the keyword 'Yours' and returns matched track from title" do
    result = @music_library.search('Yours')
    expect(result).to eq [@track1]
  end

  it "searches for the keyword 'SoFaygo' and returns matched track from artist" do
    result = @music_library.search('SoFaygo')
    expect(result).to eq [@track1]
  end

end