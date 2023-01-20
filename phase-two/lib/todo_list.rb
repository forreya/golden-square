class TodoList
  def initialize
    @all_list = []
    @incomplete_list = []
    @complete_list = []
  end

  def add(todo) # todo is an instance of Todo
    @all_list.push(todo)
    # Returns nothing
  end

  def incomplete
    # Returns all non-done todos
    incomplete = @all_list.filter {|task| !task.done? }
    incomplete
  end

  def complete
    # Returns all complete todos
    complete = @all_list.filter {|task| task.done? }
    complete
  end

  def give_up!
    # Marks all todos as complete
    @all_list.each do |task|
        task.mark_done! if !task.done?
    end
  end
end