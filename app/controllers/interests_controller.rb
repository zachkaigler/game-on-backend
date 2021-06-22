class InterestsController < ApplicationController
    before_action :authorized, only: [:create, :destroy]

    def index
        @interests = Interest.all
        render json: @interests
    end
    
    def create
        @user = User.find(params[:user_id])
        @interest = Interest.create(interest_params)
        render json: @interest
    end

    def destroy
        @interest = Interest.find(params[:id])
        @interest.destroy
    end

    private

    def interest_params
        params.permit(:user_id, :game_id)
    end

end
