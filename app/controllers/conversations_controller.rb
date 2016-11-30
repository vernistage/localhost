class ConversationsController < ApplicationController

  def index
    @user = User.find(params[:id])
  end

  def show
    @conversation = Conversation.find(params[:id])
  end

end
