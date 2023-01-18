
require 'task_tracker'

describe "task_tracker method" do
  context "when an empty string is inputted" do
    it "returns false" do
      result = task_tracker('')
      expect(result).to eq false
    end
  end

  context "when a string that doesn't include the sub-string '#TODO' is inputted" do
    it "returns false" do
      result = task_tracker('wash the dishes')
      expect(result).to eq false
    end
  end

  context "when a string that includes the sub-string '#TODO' is inputted" do
  it "returns true" do
    result = task_tracker('wash the dishes #TODO')
    expect(result).to eq true
    end
  end

  context "when an integer is inputted" do
  it "returns a message telling the user that only strings can be inputted" do
    expect{ task_tracker(1) }.to raise_error 'Only strings are accepted as inputs.'
    end
  end

  context "when a float is inputted" do
    it "returns a message telling the user that only strings can be inputted" do
      expect{ task_tracker(1.5) }.to raise_error 'Only strings are accepted as inputs.'
      end
    end
end