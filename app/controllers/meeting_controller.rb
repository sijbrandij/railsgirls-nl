class MeetingController < ApplicationController

	GROUPNAME = 'RailsGirls-nl'

	def index
		@member = MeetupMember.for_member('47207762')
		@events = MeetupEvent.for_group_name(GROUPNAME)
		@group = MeetupGroup.for_group_name(GROUPNAME)
	end
end
