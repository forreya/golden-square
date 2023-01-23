
require 'report_length'

RSpec.describe "report_length method" do
  it "receives 'huzzah' and returns a string stating the length of the string is 6" do
    result = report_length('huzzah')
    expect(result).to eq "This string was 6 characters long."
  end

  it "receives 'i am a string' and returns a string stating the length of the string is 13" do
    result = report_length('i am a string')
    expect(result).to eq "This string was 13 characters long."
  end

  it "receives '123456789' and returns a string stating the length of the string is 9" do
    result = report_length('123456789')
    expect(result).to eq "This string was 9 characters long."
  end
end