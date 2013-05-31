require_relative '../models/viewer' 

class Controller
  def self.list
    tasks = Task.all
    list = List.first
    TodoView.render_list(tasks, list)
  end
  
  def self.add(task_description)
    new_task = Task.new(description: task_description.join(" "), list_id: List.first.id)
    new_task.save
    self.list
  end

  def self.delete(task_id)
    tasks = Task.all
    Task.find(tasks[task_id.to_i - 1].id).destroy
    self.list
  end

  def self.complete(task_id)
    tasks = Task.all
    completed_task = Task.find(tasks[task_id.to_i - 1].id)
    completed_task.completed_at = Time.now
    completed_task.save
    self.list
  end
end






# Implement the list command
# When you run

# $ ruby todo.rb list
# your application should print out a list of all the TODOs. For example:

# $ ruby todo.rb list
# 1. Bake a delicious blueberry-glazed cheesecake
# 2. Write up that memo and fax it out
# 3. Conquer the world
# You'll have to design and build basic controller and model code to make this work.
# For example, how does your program know the user wants to "add" a task to their list?

# Implement the add command
# Requirements:

# A user can add (append) a task to their TODO list
# It should work like this

# $ ruby todo.rb add Walk the dog
# Appended "Walk the dog" to your TODO list...
# $
# Implement the delete command
# Requirements:

# A user can delete a specific task from their TODO list
# It should work like this

# $ ruby todo.rb list
# 1. Bake a delicious blueberry-glazed cheesecake
# 2. Write up that memo and fax it out
# 3. Conquer the world

# $ ruby todo.rb delete 3
# Deleted "Conquer the world" from your TODO list...

# $ ruby todo.rb list
# 1. Bake a delicious blueberry-glazed cheesecake
# 2. Write up that memo and fax it out

# $
# Implement completeness
# Requirements:

# A user can complete a specific task from their TODO list
# A completed TODO task will be identified as such when a user uses the list command
# Note: This will require changing the format of todo.txt and the code that parses it.
