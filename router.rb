class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    loop do
      display_option
      action = gets.chomp.to_i
      dispatch(action)
    end
  end

  private

  def display_option
    puts " "
    puts "-" * 30
    puts "What do you want to do?"
    puts "1- List all the tasks"
    puts "2- Create a task"
    puts "3- mark a task as done"
    puts "4- Delete a task"
    puts "-" * 30
    puts " "
  end

  def dispatch(action)
    case action
    when 1 then @controller.list
    when 2 then @controller.add
    when 3 then @controller.mark_as_done
    when 4 then @controller.delete
    else
      "Wrong option"
    end
  end
end
