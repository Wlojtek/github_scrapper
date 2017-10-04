$LOAD_PATH << File.expand_path(File.dirname(__FILE__))

require 'github_scrapper'
require 'initialize'

run GithubScrapperApi
