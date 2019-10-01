require 'bundler'
Bundler.require

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.sqlite')
require_all 'app'

require_relative "../lib/seed_communicator.rb"
require_relative "../lib/command_line_interface.rb"

ActiveRecord::Base.logger = nil