class MeetingController < ApplicationController

	def index
		@events = MeetupEvent.for_group_name('RailsGirls-NL')


		@member = MeetupMember.for_member('47207762')
		@group = MeetupGroup.for_group_name('RailsGirls-NL')
	end
end
