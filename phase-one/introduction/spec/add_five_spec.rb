
require 'add_five'

# describes the unit of code we are testing
Rspec.describe "add_five method" do
  # describes the single test we are performing
  it "adds 5 to 3 and returns 8" do
    # run the method
    result = add_five(3)
    # expects that the method (given a 3) will return 8
    expect(result).to eq 8
  end
end