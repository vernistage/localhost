class Booking < ApplicationRecord
	has_one :review
	belongs_to :guest, class_name: "User", foreign_key: :guest_id
	belongs_to :host, class_name: "User", foreign_key: :host_id

	validates: :guest_id, :host_id, :meet_location, :summary, presence: true
end
