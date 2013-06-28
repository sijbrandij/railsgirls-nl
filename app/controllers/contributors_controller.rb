class ContributorsController < ApplicationController
  GITHUB_CONTRIBUTORS_URI = 'https://api.github.com/repos/sijbrandij/railsgirls-nl/contributors'

  def index
    @contributors = JSON.parse(Faraday.get(GITHUB_CONTRIBUTORS_URI).body)
  end
end
