class Review < ApplicationRecord
	belongs_to :booking
	delegate :guest, :to => :booking, :allow_nil => true
	delegate :host,  :to => :booking, :allow_nil => true

	validates :booking_id, presence: :true, uniqueness: true
	validates :body, :rating, presence: :true
end
