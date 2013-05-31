class Task < ActiveRecord::Base
  belongs_to :list

  attr_accessor :list_index

  def self.ordered_tasks
    self.order('created_at ASC').map.with_index do |task, index|
      task.list_index = index + 1
      task
    end
  end

  def complete!
    self.completed_at = Time.now
    self.save
  end
end
