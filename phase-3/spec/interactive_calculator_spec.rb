
require 'interactive_calculator'

describe InteractiveCalculator do
  it "subtracts two numbers from each other" do
    fake_terminal = double(:terminal)

    expect(fake_terminal).to receive(:puts).with('Hello. I will subtract two numbers.').ordered
    expect(fake_terminal).to receive(:puts).with('Please enter a number').ordered
    expect(fake_terminal).to receive(:gets).and_return('4').ordered
    expect(fake_terminal).to receive(:puts).with('Please enter another number').ordered
    expect(fake_terminal).to receive(:gets).and_return('3').ordered
    expect(fake_terminal).to receive(:puts).with('Here is your result:').ordered
    expect(fake_terminal).to receive(:puts).with('4 - 3 = 1').ordered

    
    interactive_calculator = InteractiveCalculator.new(fake_terminal)
    interactive_calculator.run
  end
end