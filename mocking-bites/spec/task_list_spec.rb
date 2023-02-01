require "task_list"

RSpec.describe TaskList do
  it "initially has an empty list" do
    task_list = TaskList.new
    expect(task_list.all).to eq []
  end

  it "is initially not all complete" do
    task_list = TaskList.new
    expect(task_list.all_complete?).to eq false
  end

  it "has 2 tasks and returns them both" do
    task_list = TaskList.new
    task1 = double(:task1)
    task2 = double(:task2)
    task_list.add(task1)
    task_list.add(task2)
    expect(task_list.all()).to eq [task1, task2]
  end

  it "has 2 complete tasks & 1 incomplete task and returns false" do
    task_list = TaskList.new
    task1 = double(:task1, complete?: true)
    task2 = double(:task2, complete?: true)
    task3 = double(:task3, complete?: false)
    task_list.add(task1)
    task_list.add(task2)
    task_list.add(task3)
    expect(task_list.all_complete?()).to eq false
  end

  it "has 2 complete tasks and returns false" do
    task_list = TaskList.new
    task1 = double(:task1, complete?: true)
    task2 = double(:task2, complete?: true)
    task_list.add(task1)
    task_list.add(task2)
    expect(task_list.all_complete?()).to eq true
  end


  # Unit test `#all` and `#all_complete?` behaviour
end
