class TaskRepository
  attr_reader :tasks

  def initialize
    @tasks = [] # Array of task instances
  end

  def all
    @tasks
  end

  def create(task)
    @tasks << task
  end

  def find(index)
    @tasks[index]
  end

  def destroy(index)
    @tasks.delete_at(index)
  end
end
