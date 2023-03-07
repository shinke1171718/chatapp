class ConversationsController < ApplicationController

  def index
    @user = User.all
    @users = User.all
  end

  def create
    current_users_chat_rooms = Conversation.where(user_id: current_user.id)
    @messages = Message.all
    @conversation = current_user.Conversation.new
    
  end

  def show
  end

end
