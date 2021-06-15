class ConversationsController < ApplicationController
    before_action :authorized, only: [ :create]

    def index
        @conversations = Conversation.all
        render json: @conversations
    end

    def show
        @conversation = Conversation.find(params[:id])
        render json: @conversation
    end

    def create
        @conversation = Conversation.new(conversation_params)

        if @conversation.valid?
            @conversation.save
            render json: @conversation
        else
            render json: {error: "Invalid request"}
        end
    end

    private

    def conversation_params
        params.permit(:user_a_id, :user_b_id)
    end

end
