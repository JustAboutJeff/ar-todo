class Task < ActiveRecord::Base
  belongs_to :list # i must have a FK list_id, and self.list will return the associated list object
end
