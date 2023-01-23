
require 'track'

describe Track do
  before(:each) do
    @track1 = Track.new("The World Is Yours", "SoFaygo")
    @track2 = Track.new("Cloudy Skies", "Lil Skies")
  end

  it "matches the keyword with the title and returns true" do
    result = @track1.matches?('Yours')
    expect(result).to eq true
  end

  it "matches the keyword with the artist and returns true" do
    result = @track1.matches?('SoFaygo')
    expect(result).to eq true
  end

  it "can't find matches with the keyword and returns false" do
    result = @track1.matches?('Do Re Mi')
    expect(result).to eq false
  end

end