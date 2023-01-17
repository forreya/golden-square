
require 'make_snippet'

RSpec.describe "make_snippet method" do
  it "takes an empty string as an argument, returns empty string" do
    result = make_snippet('')
    expect(result).to eq ""
  end

  it "takes a sentence that has less than 5 words as an argument, returns the sentence" do
    result = make_snippet('soro soro yorugohan tabenai?')
    expect(result).to eq "soro soro yorugohan tabenai?"
  end

  it "takes a sentence that has 5 words as an argument, returns the sentence" do
    result = make_snippet('toire wa doko desu ka?')
    expect(result).to eq "toire wa doko desu ka?"
  end

  it "takes a sentence that has 6 words as an argument, returns the 'snipeted' sentence" do
    result = make_snippet('boku wa ashita jikan ga aru')
    expect(result).to eq "boku wa ashita jikan ga..."
  end

  it "takes a sentence that has 8 words as an argument, returns the 'snipeted' sentence" do
    result = make_snippet('kore wa watashi no okiniiri no kyouku desu')
    expect(result).to eq "kore wa watashi no okiniiri..."
  end
end