class MessagesController < ApplicationController
    before_action :authorized, only: [:create]

    def create
        @message = Message.create(message_params)
        @conversation = Conversation.find(@message[:conversation_id])
        ConversationChannel.broadcast_to(@conversation, { message: @message, user_prof_pic: @message.user.profile_pic, user_username: @message.user.username })
        render json: @message
    end

    private
    
    def message_params
        params.permit(:content, :conversation_id, :user_id, :read)
    end

end
