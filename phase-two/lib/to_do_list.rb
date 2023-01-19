
class ToDoList
  def initialize
    @task_list = []
  end

  def add(task)
    fail "No task was inputted." if task == ""
    @task_list.push(task)
  end

  def see_tasks()
    fail "Your to-do list is empty." if @task_list.empty?
    tasks_formatted = @task_list.join(', ')
    return "Your tasks: #{tasks_formatted}."
  end

  def delete(task)
    fail "'#{task}' is not a task in your to-do list." if !@task_list.include?(task)
    @task_list.delete(task)
  end
end