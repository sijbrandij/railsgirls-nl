class MeetingController < ApplicationController
  def index
    @meetup_events = cached_events
  end

  private

  def cached_events
    Rails.cache.fetch 'meetup_events', expires_in: 10.minute do
      MeetupEvent.for_group(4_812_372)
    end
  end
end
