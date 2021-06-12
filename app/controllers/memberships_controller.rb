class MembershipsController < ApplicationController
    before_action :authorized, only: [:create, :destroy]

    def create
    end

    def destroy
        @membership = Membership.find(params[:id])
        @membership.destroy
        render json: {message: "Membership deleted."}
    end
end
