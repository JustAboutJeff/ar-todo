class TodoView

  def self.render_list(tasks, list)
    puts "HERE IS YOUR LIST OF: #{list.name.capitalize}"
    tasks.each_with_index do |task, index|
      status = task.completed_at == nil ? " " : "X"
      puts "#{task.list_index}.) [#{status}] #{task.description}"
    end
  end
end
