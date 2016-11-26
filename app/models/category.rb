class Category < ApplicationRecord
	has_many :tags
	has_many :user_categories
	has_many :hosts, through: :user_categories
	
<<<<<<< HEAD
	validates :title, :description, uniqueness: true, presence: true
=======
	validates :title, :description, presence: true
	validates :title, :description, uniqueness: true
>>>>>>> master
end
