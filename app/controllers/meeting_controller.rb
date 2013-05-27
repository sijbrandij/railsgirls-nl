class MeetingController < ApplicationController

	GROUPNAME = 'RailsGirls-nl'

	def index
    @meetup_events = Rails.cache.fetch 'meetup_events', expires_in: 10.minute do
      MeetupEvent.for_group(4812372)
    end
  end
end