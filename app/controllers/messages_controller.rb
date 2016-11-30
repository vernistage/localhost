class MessagesController < ApplicationController

  def create
    @conversation = Conversation.find(params[:id])
    @conversation.messages.build(user_id: current_user.id, body: params[:message][:body]).save
    redirect_to conversations_show_path(@conversation)
  end

end
