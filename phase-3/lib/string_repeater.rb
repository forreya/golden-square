
class StringRepeater
  def initialize(terminal)
    @terminal = terminal
  end

  def run
    @terminal.puts "Hello. I will repeat a string many times."
    @terminal.puts "Please enter a string"
    str = @terminal.gets.chomp 
    @terminal.puts "Please enter a number of repeats"
    repetitions = @terminal.gets.to_i
    @terminal.puts "Here is your result:"
    repeated_str = ""
    repetitions.times {
      repeated_str = repeated_str + str
    }
    @terminal.puts repeated_str

  end

end

# string_repeater = StringRepeater.new(Kernel)
# string_repeater.run

# Hello. I will repeat a string many times.
# Please enter a string
# TWIX
# Please enter a number of repeats
# 10
# Here is your result:
# TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX