class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string    :description
      t.integer   :list_id
      t.timestamp :completed_at
      t.timestamps
    end
  end
end
