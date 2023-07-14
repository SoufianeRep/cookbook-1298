class TasksView
  def display_tasks(tasks) # array of instances
    tasks.each_with_index do |task, index|
      x_mark = task.done? ? "X" : " "
      puts "#{index + 1} - [#{x_mark}] - #{task.description}"
    end
  end

  def ask_for_description
    puts "What is the description of the task?"
    return gets.chomp
  end

  def ask_for_index
    puts "Which task?"
    return gets.chomp.to_i - 1
  end
end
