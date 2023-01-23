
require 'counter'

RSpec.describe Counter do
  it "Instantiates the Counter object at count 0" do
    end_count = Counter.new
    outcome = end_count.report
    expect(outcome).to eq "Count is at 0 so far."
    end

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
    counter.add(20)
    result = counter.report()
    expect(result).to eq "Count is at 35 so far."
  end

end