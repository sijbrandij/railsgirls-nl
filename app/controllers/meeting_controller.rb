class MeetingController < ApplicationController

	GROUPNAME = 'RailsGirls-nl'

	def index
    @events = Event.where(status: "upcoming")
	end
end
