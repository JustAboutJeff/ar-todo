require 'pry'


class TodoView

  def self.render_list(tasks, list)
    puts "HERE IS YOUR LIST OF: #{list.name.capitalize}"
    tasks.each_with_index do |task, index|
      status = task.completed_at == nil ? " " : "X"
      puts "#{index + 1}.) [#{status}] #{task.description} - #{task.id}"
    end
  end
end
