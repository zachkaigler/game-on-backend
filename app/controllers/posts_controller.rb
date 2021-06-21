class PostsController < ApplicationController
    before_action :authorized, only: [:create, :update, :delete]

    def create
        @post = Post.create(post_params)
        render json: @post
    end

    def update
        @post = Post.find(params[:id])
        @post.update(post_params)
        render json: @post
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy
    end

    private
    
    def post_params
        params.permit(:content, :mood, :date, :group_id, :user_id)
    end
end
