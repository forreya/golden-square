
require 'counter'

RSpec.describe Counter do
  it "sets up a new counter object, increments the object, and then reports the current value" do
    counter = Counter.new()
    counter.add(5)
    result = counter.report()
    expect(result).to eq "Count is at 5 so far."
  end

  it "sets up a new counter object, increments the object twice, and then reports the current value" do
    counter = Counter.new()
    counter.add(5)
    counter.add(10)
    result = counter.report()
    expect(result).to eq "Count is at 15 so far."
  end

end