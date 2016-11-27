class Tag < ApplicationRecord
	belongs_to :category
  has_many :user_tags
  has_many :hosts, through: :user_tags
	validates :category_id, :specialty, presence: :true
end
