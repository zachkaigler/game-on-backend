class RequestsController < ApplicationController
    before_action :authorized, only: [:create, :destroy]

    def create
        @request = Request.create(request_params)
        render json: @request
    end

    def destroy
    end

    private
    def request_params
        params.permit(:group_id, :user_id, :accepted, :read)
    end

end
