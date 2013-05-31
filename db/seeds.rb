require 'faker'
# ,'grocery','work','school','bitches'
['chores'].each do |list_name|
  current_list = List.new(name: list_name)
  5.times do
    task = Task.new(description: Faker::Lorem.sentence(8))
    task.list = current_list
    task.save!
  end
  current_list.save!
end
