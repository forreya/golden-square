
require 'reminder'

# use the class name here instead of a string
RSpec.describe Reminder do
  context "when task(s) are set" do
    it "creates a task and reminds user of it" do
      reminder = Reminder.new('Ryan')
      reminder.remind_me_to("Walk the frog")
      result = reminder.remind()
      expect(result).to eq "Walk the frog, Ryan!"
    end
  end

  context "no tasks set" do
    it "fails and outputs an error" do
      reminder = Reminder.new('Ryan')
      expect{ reminder.remind() }.to raise_error "No reminder set!"
    end
  end
end