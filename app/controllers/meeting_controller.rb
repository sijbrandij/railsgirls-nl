class MeetingController < ApplicationController

	def index
		@member = MeetupMember.for_member('47207762')
		@events = MeetupEvent.for_group_name('appsterdam')
		@group = MeetupGroup.for_group_name('appsterdam')
	end
end
