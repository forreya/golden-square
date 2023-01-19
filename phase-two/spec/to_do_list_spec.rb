
require 'to_do_list'

describe ToDoList do
  context "initialize a to-do list, then call add method (empty string as argument)" do
    it "raises an error telling user to input a task as an argument" do
      to_do_list = ToDoList.new()
      expect{ to_do_list.add("") }.to raise_error "No task was inputted."
    end
  end

  context "initialize an empty to-do list, then call see_tasks method" do
    it "raises an error telling user that to-do list is empty" do
      to_do_list = ToDoList.new()
      expect{ to_do_list.see_tasks() }.to raise_error "Your to-do list is empty."
    end
  end

  context "initialize an empty to-do list, add one task, then call see_tasks method" do
    it "prints tasks" do
      to_do_list = ToDoList.new()
      to_do_list.add("walk the kaeru")
      result = to_do_list.see_tasks
      expect(result).to eq "Your tasks: walk the kaeru."
    end
  end

  context "initialize an empty to-do list, add two tasks, then call see_tasks method" do
    it "prints tasks" do
      to_do_list = ToDoList.new()
      to_do_list.add("walk the kaeru")
      to_do_list.add("walk the koneko")
      result = to_do_list.see_tasks
      expect(result).to eq "Your tasks: walk the kaeru, walk the koneko."
    end
  end

  context "initialize a to-do list, then call delete method" do
    it "raises an error telling user that task doesn't exist" do
      to_do_list = ToDoList.new()
      expect{ to_do_list.delete("something") }.to raise_error "'something' is not a task in your to-do list."
    end
  end

  context "initialize an empty to-do list, add one task, deletes that task, then calls see_tasks method" do
    it "raises an error telling user that to-do list is empty" do
      to_do_list = ToDoList.new()
      to_do_list.add("walk the kaeru")
      to_do_list.delete("walk the kaeru")
      expect{ to_do_list.see_tasks() }.to raise_error "Your to-do list is empty."
    end
  end
  context "initialize an empty to-do list, add two tasks, deletes the first task, then calls see_tasks method" do
    it "prints tasks" do
      to_do_list = ToDoList.new()
      to_do_list.add("walk the kaeru")
      to_do_list.add("walk the koneko")
      to_do_list.delete("walk the kaeru")
      result = to_do_list.see_tasks()
      expect(result).to eq "Your tasks: walk the koneko."
    end
  end
end