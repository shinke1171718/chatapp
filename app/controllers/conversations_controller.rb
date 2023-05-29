class ConversationsController < ApplicationController

  def index
    @users = User.where.not(id: current_user.id)
  end

  def show
    @conversation_message = message.new
    @conversation_room = Conversation.find(params[:id])
    @conversation = Conversation.where(conversation_room: @conversation_room)
    @@conversation_room_user = @conversation_room.where.not(id: current_user.id)
  end

end
