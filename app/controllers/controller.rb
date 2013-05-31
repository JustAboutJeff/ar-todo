require_relative '../models/viewer' 

class Controller
  def self.execute(command, *args)
    @list = List.first
    @ordered_tasks = @list.tasks.ordered_tasks

    if valid_commands.include?command.to_sym
      self.send(command, args.join(' '))
    else 
      raise 'Please enter a valid todo command e.g. LIST, ADD, DELETE, COMPLETE'
    end
  end

  def find_task(task_list_index)
    @ordered_tasks.find { |task| task.list_index == task_list_index.to_i }
  end

  def self.valid_commands
    [:list, :add, :delete, :complete]
  end

  def self.list(empty_arg)
    TodoView.render_list(@tasks, @list)
  end
  
  def self.add(task_description)
    @list.tasks.create!(description: task_description)
    self.list
  end

  def self.delete(task_index)
    task = find_task(task_index)
    task.destroy
    self.list
  end

  def self.complete(task_index)
    task = find_task(task_index)
    task.complete!
    self.list
  end
end
