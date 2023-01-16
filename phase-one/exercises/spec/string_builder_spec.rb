
require 'string_builder'

RSpec.describe StringBuilder do
  it "Creates a StringBuilder object, adds onto the string, and returns the length of the string" do
    string = StringBuilder.new()
    string.add("Kaeru")
    result = string.size
    expect(result).to eq 5
  end

  it "Creates a StringBuilder object, adds onto the string, and returns the StringBuilder object" do
    string = StringBuilder.new()
    string.add("Kaeruuuuuuuu")
    result = string
    expect(result).to eq string
  end
end