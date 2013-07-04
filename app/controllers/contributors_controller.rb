class ContributorsController < ApplicationController

  def index
    @contributors = Rails.cache.fetch 'contributors', expires_in: 10.minutes do
      Contributor.all
    end
  end
end
