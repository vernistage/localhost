class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
    	t.integer :guest_id
    	t.integer :host_id
    	t.string :meet_location
      t.datetime :start_time
      t.datetime :end_time
    	t.text :summary
    	t.timestamps
    end
  end
end
