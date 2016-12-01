class ConversationsController < ApplicationController

  def index
    @user = current_user
  end

  def create
    @conversation = Conversation.find_or_create_by(host_id: params[:id], guest_id: current_user.id)
    redirect_to conversations_show_path(@conversation)
  end

  def show
    # @conversation = Conversation.find_or_create_by(host_id: params[:id], guest_id: current_user.id)
    @conversation = Conversation.find(params[:id])
  end

  def polling

    convo = Conversation.find(params["id"])
    messages = convo.messages.order("created_at DESC")

    diff = messages.length - params["messageNum"].to_i
    puts diff
    if diff < 1
      respond_to do |format|
        format.html { render :text => "no_content" }
      end
      return nil
    end
    newMessages = []
    count = 0
    while count < diff
      newMessages.push(messages[diff-(1+count)])
      count += 1
    end
    # render template: 'messages/_index', :locals => {messages: newMessages, count: conversation.messages.count-newMessages.length }, layout: false
    render template: 'messages/_index', :locals => {messages: newMessages, count: convo.messages.count }, layout: false
  end
end
