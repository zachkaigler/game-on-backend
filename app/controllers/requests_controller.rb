class RequestsController < ApplicationController
    before_action :authorized, only: [:create, :update, :destroy]

    def index
        @requests = Request.all
        render json: @requests
    end

    def create
        @request = Request.new(request_params)

        if @request.valid?
            @request.save
            render json: @request
        else
            render json: {error: "A user can only have one active join request to a group."}
        end
    end

    def update
        @request = Request.find(params[:id])
        @request.update(request_params)
        render json: @request
    end

    def destroy
        @request = Request.find(params[:id])
        @request.destroy
        render json: { message: "Request cancelled."}
    end

    private
    def request_params
        params.permit(:group_id, :user_id, :accepted, :read)
    end

end
