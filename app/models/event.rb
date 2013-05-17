class Event < ActiveRecord::Base
  attr_accessible :venue_name, :venue_address1, :venue_address2, :venue_address3, :venue_city, :venue_state, :venue_map, :event_url, :name, :description, :status, :how_to_find_us, :time
end
