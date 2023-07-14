require_relative 'tasks_view'
require_relative 'task'

class TasksController
  def initialize(task_repository)
    @task_repository = task_repository
    @view = TasksView.new
  end

  # Create a task
  def add
    description = @view.ask_for_description
    task = Task.new(description)
    @task_repository.create(task)
  end

  # List all the tasks
  def list
    display_tasks
  end

  # mark a task as done
  def mark_as_done
    # 1. Ask the view to display the list of tasks
    display_tasks
    # 2. Ask the view for the index of the task to mark
    index = @view.ask_for_index
    # 3. ask the repository to find the task with the index
    task = @task_repository.find(index)
    # 4. mark the task as done
    task.mark_as_done!
  end
  # delete a task

  def delete
    # 1. Display the list of tasks
    display_tasks
    # 2. ask the view to get the index of the task
    index = @view.ask_for_index
    # 3. ask the repository to delete the task
    @repo.destroy(index)
  end

  private

  def display_tasks
    tasks = @task_repository.all
    @view.display_tasks(tasks)
  end
end
