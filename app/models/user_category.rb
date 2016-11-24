class UserCategory < ApplicationRecord
	belongs_to :host, class_name: "User"
	belongs_to :category	
end
