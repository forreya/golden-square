
# A method called count_words that takes a string as an argument and returns the number of words in that string.

require 'count_words'

RSpec.describe "count_words method" do
  it "receives an empty string & returns 0" do
    result = count_words('')
    expect(result).to eq 0
  end

  it "receives 1 word & returns 1" do
    result = count_words('tasukete!')
    expect(result).to eq 1
  end

  it "receives a 2 word string & returns 0" do
    result = count_words('baka dekai')
    expect(result).to eq 2
  end

  it "receives a 4 word sentence & returns 0" do
    result = count_words('retsu ga totemo nagai')
    expect(result).to eq 4
  end
end