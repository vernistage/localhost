class User < ApplicationRecord
	has_many :guest_bookings, class_name: "Booking", foreign_key: :guest_id
	has_many :host_bookings, class_name: "Booking", foreign_key: :host_id

	has_many :host_reviews, through: :host_bookings, source: :review
	has_many :guest_reviews, through: :guest_bookings, source: :review

	has_many :user_categories, foreign_key: :host_id
	has_many :categories, through: :user_categories

  has_many :user_tags, foreign_key: :host_id
	has_many :tags, through: :user_tags
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, :bio, :homebase, presence: true

  validate :max_categories

  private

  def max_categories
    categories.length <= 3
  end

end
