class MessagesController < ApplicationController

  def create
    @conversation = Conversation.find(params[:id])
    @message = @conversation.messages.build(user_id: current_user.id, body: params[:message][:body])
    @message.save

    respond_to do |format|
      format.json do
        render :json => { html: render_to_string(:partial => 'host_show', :locals => {message: @message},  :formats => :html) }
      end
      format.html do
        redirect_to conversations_show_path(@conversation)
      end
    end
  end

  def polling
    @conversation = Conversation.find(params[:id])
    @message = @conversation.messages.order_by("DESC")
  end

end
