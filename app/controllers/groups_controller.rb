class GroupsController < ApplicationController
    before_action :authorized, only: [:update, :create, :destroy]

    def index
        @groups = Group.all
        render json: @groups
    end

    def show
        @group = Group.find(params[:id])
        render json: @group
    end

    def create 
        @group = Group.create(group_params)
        render json: @group
    end
    
    def update
        @group = Group.find(params[:id])
        @group.update(group_params)
        render json: @group
    end

    def destroy
        @group = Group.find(params[:id])
        @group.memberships.destroy_all
        @group.destroy
        render json: {message: "Group deleted."}
    end

    private

    def group_params
        params.permit(:group_name, :group_about, :group_location, :group_time, :open, :group_image, :game_id, :user_id)
    end

end
