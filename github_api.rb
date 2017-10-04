require 'net/http'
require 'json'

class GithubApi
  API_URL = "https://api.github.com"
  USERS = '/users/'
  FOLLOWERS = 'followers'
  FOLLOWING = 'following'

  def initialize
    uri = URI(API_URL)
  end

  def user(login)
    uri = URI::join(API_URL, USERS, login)
    scrapp(uri)
  end

  def followers(login)
    login = "#{login}/"
    uri = URI::join(API_URL, USERS, login, FOLLOWERS)
    scrapp(uri)
  end

  def following(login)
    login = "#{login}/"
    uri = URI::join(API_URL, USERS, login, FOLLOWING)
    scrapp(uri)
  end

  private
  def scrapp(uri)
    response = Net::HTTP.get(uri)
    JSON.parse(response)
  end
end
