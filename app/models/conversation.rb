class Conversation < ApplicationRecord
  has_many :messages
  has_many :user_conversations
  has_many :users, through: :user_conversations

  def host
    User.find(self.host_id)
  end

  def guest
    User.find(self.guest_id)
  end

  def order_messages
    self.messages.order('created_at ASC')
  end


end
