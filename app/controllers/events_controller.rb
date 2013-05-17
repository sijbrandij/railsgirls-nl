class EventsController < ApplicationController

  GROUPNAME = 'Railsgirls-nl'

  def import
    @member = MeetupMember.for_member('47207762')
    @events = MeetupEvent.for_group_name(GROUPNAME)
    @group = MeetupGroup.for_group_name(GROUPNAME)

    @events.each do |event|
      @event = Event.where(event_id: event.id, ).first
      if @event
        @event.update_attributes(venue_name: event.venue_name, venue_address1: event.venue_address1, venue_address2: event.venue_address2, venue_address3: event.venue_address3, venue_city: event.venue_city, venue_state: event.venue_state, venue_map: event.venue_map, event_url: event.event_url, name: event.name, description: event.description, status: event.status, how_to_find_us: event.how_to_find_us, time: event.time.to_datetime)
      else
        @event = Event.create(event_id: event.id, venue_name: event.venue_name, venue_address1: event.venue_address1, venue_address2: event.venue_address2, venue_address3: event.venue_address3, venue_city: event.venue_city, venue_state: event.venue_state, venue_map: event.venue_map, event_url: event.event_url, name: event.name, description: event.description, status: event.status, how_to_find_us: event.how_to_find_us, time: event.time.to_datetime)
      end
    end
    redirect_to root_path, notice: "#{@events.size} imported."
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.create(params[:event])
    if @event.save
      redirect_to root_path, notice: "Event was created."
    else
      render 'new'
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update_attributes(params[:event])
      redirect_to root_path, notice: "Event updated."
    else
      render 'edit'
    end
  end

  def destroy
    @event = Event.find(params[:id])
    if @event.destroy
      redirect_to root_path, notice: "Event deleted."
    end
  end
end
