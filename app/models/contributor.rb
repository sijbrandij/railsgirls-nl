class Contributor
  GITHUB_CONTRIBUTORS_URI = 'https://api.github.com/repos/sijbrandij/railsgirls-nl/contributors'

  def self.all
    JSON.parse(Faraday.get(GITHUB_CONTRIBUTORS_URI).body)
  end
end
