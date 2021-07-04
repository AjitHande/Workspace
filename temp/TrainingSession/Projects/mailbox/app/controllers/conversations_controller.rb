class ConversationsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @users =  User.all
    @conversations = Conversation.all
  end

  def create
    if Conversation.between(params[:sender_id], params[:recipient_id]).present?
      @conversations = Conversation.between(params[:sender_id], params[:recipient_id]).first
    else
      @conversations = Conversation.create!(conversations_params)
    end

    redirect_to conversation_messages_path(@conversations)

    private:
    def conversations_params
      params.permit(:sender_id, :recipient_id)
    end
  end

end