class MeetingController < ApplicationController

	GROUPNAME = 'RailsGirls-nl'

	def index
    # @events = Rails.cache.fetch 'meetup_events', expires_in: 10.minute do
    #   MeetupEvent.for_group_name(GROUPNAME)
    # end
    @events = MeetupEvent.for_group(4812372)
    raise @events.inspect
  end
end