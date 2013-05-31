class List < ActiveRecord::Base
  has_many :tasks # i know that task has a foreign key list_id, and now i can do things like self.tasks
end
