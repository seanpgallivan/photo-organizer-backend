class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token
    
    def show 
        user = User.find_by(username: params[:id])
        if user
            render :json => user
        else
            render json: { error: user.errors }, status 404
            log_action(nil, user.errors.full_messages.to_s)
        end
    end 

    def create 
        user = User.new(user_params)
        if user.valid?
            render :json => user
            log_action(user.id)
        else
            render json: { error: user.errors }, status: 500
            log_action(nil, user.errors.full_messages.to_s)
        end
    end 

    private 
    def user_params
        params.require(:user).permit(:username, :bio, :fullname)
    end
end