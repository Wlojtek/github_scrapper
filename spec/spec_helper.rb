$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..'))

require 'grape'
require 'rack/test'
require 'pry'
require 'sequel'

Dir["#{File.dirname(__FILE__)}/../*.rb"].each do |file|
  require file
end

RSpec.configure do |config|
  config.include Rack::Test::Methods
  DB = Sequel.connect('mysql2://localhost/github_scrapper_test', user: 'root')
  require 'user'
end
