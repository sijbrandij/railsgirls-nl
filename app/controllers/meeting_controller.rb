class MeetingController < ApplicationController

	GROUPNAME = 'RailsGirls-nl'

	def index

		#@member = MeetupMember.for_member('47207762')
    @events = Rails.cache.fetch 'meetup_events', expires_in: 10.minute do
      MeetupEvent.for_group_name(GROUPNAME)
    end
		#@group = MeetupGroup.for_group_name(GROUPNAME)
	end
end
