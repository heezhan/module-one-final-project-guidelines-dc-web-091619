require 'bundler'
Bundler.require

require_relative "../lib/seed_communicator.rb"
require_relative "../lib/command_line_interface.rb"

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.sqlite')
require_all 'app'


ActiveRecord::Base.logger = nil