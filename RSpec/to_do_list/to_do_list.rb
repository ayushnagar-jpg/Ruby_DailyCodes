class Task
  attr_reader :title, :completed

  def initialize(title)
    raise 'Title cannot be empty' if title.strip.empty?

    @title = title
    @completed = false
  end

  def complete
    @completed = true
  end
end

class TodoList
  attr_reader :tasks

  def initialize
    @tasks = []
  end

  def add_task(title)
    task = Task.new(title)
    @tasks << task
  end

  def complete_task(index)
    task = @tasks[index]
    raise 'Task not found' unless task

    task.complete
  end

  def remove_task(index)
    task = @tasks[index]
    raise 'Task not found' unless task

    @tasks.delete_at(index)
  end
end