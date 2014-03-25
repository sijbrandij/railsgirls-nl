class MeetingController < ApplicationController

	GROUPNAME = 'RailsGirls-nl'

	def index
    @meetup_events =       MeetupEvent.for_group(4812372)

  end
end