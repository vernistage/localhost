class MessagesController < ApplicationController

  def create
    @conversation = Conversation.find(params[:id])
    @message = @conversation.messages.build(user_id: current_user.id, body: params[:message][:body])
    @message.save
    if request.xhr?
      render :partial => '/messages/host_show', :locals => {message: @message}
    else
      redirect_to conversations_show_path(@conversation)
    end
  end

end
