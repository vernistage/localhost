class ConversationsController < ApplicationController

  def index
    user = User.find(params[:id])
    @conversation = user.conversations.first
  end

end
