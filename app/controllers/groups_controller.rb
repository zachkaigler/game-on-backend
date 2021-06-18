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
        image = Cloudinary::Uploader.upload(params[:group_image]) 
        @group = Group.create(group_name: params[:group_name], group_about: params[:group_about], group_location: params[:group_location], group_time: params[:group_time], open: params[:open], group_image: image["url"], game_id: params[:game_id], user_id: params[:user_id])
        render json: @group
    end
    
    def update 
        @group = Group.find(params[:id])
        if params[:group_image]
            image = Cloudinary::Uploader.upload(params[:group_image])
            @group.update(group_image: image["url"])
        else
            @group.update(group_params)
        end
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
