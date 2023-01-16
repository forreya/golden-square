
class Counter
  def initialize
    @count = 0
  end

  def add(number)
    @count += number
  end

  def report
    "Count is at #{@count} so far."
  end
end