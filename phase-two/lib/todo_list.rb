class TodoList
  def initialize
    @incomplete_list = []
    @complete_list = []
  end

  def add(todo) # todo is an instance of Todo
    @incomplete_list.push(todo)
    # Returns nothing
  end

  def incomplete
    # Returns all non-done todos
    @incomplete_list = @incomplete_list.filter {|task| !task.done? }
    @incomplete_list
  end

  def complete
    # Returns all complete todos
    @incomplete_list.each do |task|
        @complete_list.push(task) if task.done?
        # @incomplete_list.delete(task) if task.done?
    end
    @complete_list
  end

  def give_up!
    # Marks all todos as complete
    @incomplete_list.each do |task|
        task.mark_done!
    end
  end
end