class UserCategory < ApplicationRecord
	belongs_to :host, class_name: "User"
	belongs_to :category

	validates :host_id, :category_id, presence: true	
end
