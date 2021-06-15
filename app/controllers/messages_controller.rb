class MessagesController < ApplicationController
    before_action :authorized, only: [:create]

    def create
        @message = Message.create(message_params)
        render json: @message
    end

    private
    
    def message_params
        params.permit(:content, :conversation_id, :user_id, :read)
    end

end
