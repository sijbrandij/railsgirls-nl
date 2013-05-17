class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :event_id
      t.string :venue_name
      t.string :venue_address1
      t.string :venue_address2
      t.string :venue_addres3
      t.string :venue_city
      t.string :venue_state
      t.string :venue_map
      t.string :event_url
      t.string :name
      t.text :description
      t.string :status
      t.text :how_to_find_us
      t.datetime :time
      t.timestamps
    end
  end
end
