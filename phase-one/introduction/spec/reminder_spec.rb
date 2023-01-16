
require 'reminder'

# use the class name here instead of a string
RSpec.describe Reminder do
  it "creates a task and reminds user of it" do
    reminder = Reminder.new('Ryan')
    reminder.remind_me_to("Walk the frog")
    result = reminder.remind()
    expect(result).to eq "Walk the frog, Ryan!"
  end
end