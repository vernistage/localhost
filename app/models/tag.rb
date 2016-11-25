class Tag < ApplicationRecord
	belongs_to :category

	validates :category_id, :specialty, presence: :true
end
