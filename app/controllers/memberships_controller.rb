class MembershipsController < ApplicationController
    before_action :authorized, only: [:create, :destroy]

    def create
        @membership = Membership.create(membership_params)
        render json: @membership
    end

    def destroy
        @membership = Membership.find(params[:id])
        @membership.destroy
        render json: {message: "Membership deleted."}
    end

    private

    def membership_params
        params.permit(:group_id, :user_id)
    end

end
