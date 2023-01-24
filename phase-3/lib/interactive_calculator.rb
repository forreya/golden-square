
class InteractiveCalculator
  def initialize(terminal)
    @terminal = terminal
  end

  def run
    @terminal.puts "Hello. I will subtract two numbers."
    @terminal.puts "Please enter a number"
    num1 = @terminal.gets.to_i
    @terminal.puts "Please enter another number"
    num2 = @terminal.gets.to_i
    @terminal.puts "Here is your result:"
    result = num1 - num2
    @terminal.puts "#{num1} - #{num2} = #{result}"
  end
end

# interactive_calculator = InteractiveCalculator.new(Kernel)
# interactive_calculator.run

# Hello. I will subtract two numbers.
# Please enter a number
# 4
# Please enter another number
# 3
# Here is your result:
# 4 - 3 = 1