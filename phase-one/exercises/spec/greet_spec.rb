
require 'greet'

RSpec.describe "greet method" do
  it "receives name as 'Ryan' and returns 'Hello, Ryan!' string" do
    result = greet('Ryan')
    expect(result).to eq 'Hello, Ryan!'
  end
end