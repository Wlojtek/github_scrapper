require 'sequel'
require 'user'

DB = Sequel.connect('mysql2://localhost/github_scrapper', user: 'root')

