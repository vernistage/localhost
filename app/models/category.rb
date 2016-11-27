class Category < ApplicationRecord
	has_many :tags
	has_many :user_categories
	has_many :hosts, through: :user_categories
	
	validates :title, :description, :image, presence: true
	validates :title, :description, uniqueness: true
end
