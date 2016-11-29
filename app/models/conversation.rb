class Conversation < ApplicationRecord
  has_many :messages
  has_many :user_conversations

  def host
    User.find(self.host_id)
  end

  def guest
    User.find(self.guest_id)
  end

  def orderMessages
    self.messages.order('created_at ASC')
  end

end
