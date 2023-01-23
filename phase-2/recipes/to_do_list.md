
# To Do List Class Design Recipe

## 1. Describe the Problem

> As a user
> So that I can keep track of my tasks
> I want a program that I can add todo tasks to and see a list of them.

> As a user
> So that I can focus on tasks to complete
> I want to mark tasks as complete and have them disappear from the list.

## 2. Design the Class Interface

```ruby
class ToDoList
  def initialize()
    # creates global 'task_list' variable (set to empty array)
  end

  def add(task) # task is a string
    # Throws an exception if no task is set or if task is an empty string...
    # ...tells user no task was inputted
    # otherwise, adds 'task' argument into the 'task_list' variable
  end

  def see_tasks()
    # if 'task_list' is empty, informs user that no tasks has been set yet
    # returns 'task_list' array as a nicely formatted string
  end

  def delete_tasks(task)
  # asks user which task they would like to delete
  # if 'task_list' is empty, informs user that there's nothing in the to-do list
  # if task exists in 'task_list' array, removes it from the array
  # if task doesn't exist, tells user the task they inputted doesn't exist
end
```

## 3. Create Examples as Tests

```ruby
# 1
to_do_list = ToDoList.new()
to_do_list.add("") # => "No task was inputted."

# 2
to_do_list = ToDoList.new()
to_do_list.see_tasks() # => "Your to-do list is empty."

# 3
to_do_list = ToDoList.new()
to_do_list.add("walk the kaeru") 
to_do_list.see_tasks() # => "Your tasks: walk the kaeru."

# 4
to_do_list = ToDoList.new()
to_do_list.add("walk the kaeru")
to_do_list.add("walk the koneko")
to_do_list.see_tasks() # => "Your tasks: walk the kaeru, walk the koneko."

# 5
to_do_list = ToDoList.new()
to_do_list.delete("something") # => "Your to-do list is empty, there is nothing to delete."

# 6
to_do_list = ToDoList.new()
to_do_list.add("walk the kaeru")
to_do_list.delete("something") # => "'something' is not a task in your to-do list."

# 7
to_do_list = ToDoList.new()
to_do_list.add("walk the kaeru")
to_do_list.delete("walk the kaeru")
to_do_list.see_tasks() # => "Your to-do list is empty."

# 8
to_do_list = ToDoList.new()
to_do_list.add("walk the kaeru")
to_do_list.add("walk the koneko")
to_do_list.delete("walk the kaeru")
to_do_list.see_tasks() # => "Your tasks: walk the koneko."

```

## 4. Implement the Behaviour
_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._