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
        image = Cloudinary::Uploader.upload(params[:profile_pic])
        @user = User.new(username: params[:username], password: params[:password], email: params[:email], profile_pic: image["url"])

        if @user.valid?
            @user.save
            render json: {username: @user.username, id: @user.id, profile_pic: @user.profile_pic, games: @user.games, requests: @user.requests, all_requests_to_my_groups: @user.all_requests_to_my_groups, all_conversations: @user.all_conversations, token: encode_token({user_id: @user.id})}
        else
            render json: {error: "Username already taken"}
        end
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        render json: @user
    end

    def login
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            render json: {username: @user.username, id: @user.id, profile_pic: @user.profile_pic, games: @user.games, requests: @user.requests, all_requests_to_my_groups: @user.all_requests_to_my_groups, all_conversations: @user.all_conversations, token: encode_token({user_id: @user.id})}
        else 
            render json: {error: "Incorrect username or password"}
        end
    end

    def keep_logged_in
        render json: {username: @user.username, id: @user.id, profile_pic: @user.profile_pic, games: @user.games, requests: @user.requests, all_requests_to_my_groups: @user.all_requests_to_my_groups, all_conversations: @user.all_conversations, token: encode_token({user_id: @user.id})}
    end

    def search
        @users = User.all
        @games = Game.all
        @groups = Group.all

        @user_results = []
        @game_results = []
        @group_results = []

        @users.each do |user|
            if user[:username].downcase.include?(params[:query].downcase)
                @user_results << user
            end
        end

        @games.each do |game|
            if game[:name].downcase.include?(params[:query].downcase)
                @game_results << game
            end
        end

        @groups.each do |group|
            if group[:group_name].downcase.include?(params[:query].downcase)
                @group_results << group        
            end
        end

        render json: {user_results: @user_results, game_results: @game_results, group_results: @group_results}
    end

    private

    def user_params
        params.permit(:username, :password, :email, :profile_pic, :bio, :location, :id, :user, :query)
    end

end
