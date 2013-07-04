class ContributorsController < ApplicationController
  GITHUB_CONTRIBUTORS_URI = 'https://api.github.com/repos/sijbrandij/railsgirls-nl/contributors'

  def index
    @contributors = Rails.cache.fetch 'contributors', expires_in: 10.minute do
      JSON.parse(Faraday.get(GITHUB_CONTRIBUTORS_URI).body)
    end
  end
end
