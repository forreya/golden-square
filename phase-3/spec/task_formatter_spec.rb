
require "task_formatter"

describe TaskFormatter do
  it "returns the formatted incomplete task" do
    task = double(:Task, is_complete?: false, title: "Do the dishes")
    task_formatter = TaskFormatter.new(task)
    expect(task_formatter.format).to eq "- [ ] Do the dishes"
  end

  it "returns the formatted incomplete task" do
    task = double(:Task, is_complete?: true, title: "Do the dishes")
    task_formatter = TaskFormatter.new(task)
    expect(task_formatter.format).to eq "- [x] Do the dishes"
  end
end