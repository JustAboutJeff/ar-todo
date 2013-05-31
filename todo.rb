require_relative 'config/application'
require_relative 'app/models/viewer'
require_relative 'app/controllers/controller'

raise 'Please enter a valid todo command e.g. LIST, ADD, DELETE, COMPLETE' if ARGV.empty?

Controller.execute(ARGV[0], ARGV[1..-1])
