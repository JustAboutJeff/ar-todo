require_relative 'config/application'
require_relative 'app/models/viewer'
require_relative 'app/controllers/controller'

# puts "Put your application code in #{File.expand_path(__FILE__)}"


raise 'Please enter a valid todo command e.g. LIST, ADD, DELETE, COMPLETE' if ARGV.empty?

case ARGV[0].downcase
  when 'list'     then Controller.list
  when 'add'      then Controller.add(ARGV[1..-1])
  when 'delete'   then Controller.delete(ARGV[1])
  when 'complete' then Controller.complete(ARGV[1])
  else raise 'Please enter a valid todo command e.g. LIST, ADD, DELETE, COMPLETE'
end

