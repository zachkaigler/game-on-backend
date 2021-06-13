class UsersController < ApplicationController
    # Any time a request comes in with a token in the headers, before_action required
    # Whenever you have the before_action, you will always have @user at that time
    # The @user will always point to the user who's associated with the token
    before_action :authorized, only: [:keep_logged_in, :update]

    def index
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def create
        @user = User.create(user_params)
        render json: {username: @user.username, id: @user.id, profile_pic: @user.profile_pic, games: @user.games, requests: @user.requests, all_requests_to_my_groups: @user.all_requests_to_my_groups, token: encode_token({user_id: @user.id})}
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        render json: @user
    end

    def login
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            render json: {username: @user.username, id: @user.id, profile_pic: @user.profile_pic, games: @user.games, requests: @user.requests, all_requests_to_my_groups: @user.all_requests_to_my_groups, token: encode_token({user_id: @user.id})}
        else 
            render json: {error: "Incorrect username or password"}
        end
    end

    def keep_logged_in
        render json: {username: @user.username, id: @user.id, profile_pic: @user.profile_pic, games: @user.games, requests: @user.requests, all_requests_to_my_groups: @user.all_requests_to_my_groups, token: encode_token({user_id: @user.id})}
    end

    private

    def user_params
        params.permit(:username, :password, :email, :profile_pic, :bio, :location, :id, :user)
    end

end
