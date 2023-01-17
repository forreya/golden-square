
def calculate_reading_time(text)
  if text.split(" ").length == 0
    return 1
  elsif text.split(" ").length % 200 == 0
    time_calculation = ( (text.split(" ").length / 200)).floor
  else
    time_calculation = ( (text.split(" ").length / 200) + 1).floor
  end
  time_calculation
end