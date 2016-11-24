class Review < ApplicationRecord
	belongs_to :booking
	delegate :guest, :to => :booking, :allow_nil => true
	delegate :host,  :to => :booking, :allow_nil => true
end
