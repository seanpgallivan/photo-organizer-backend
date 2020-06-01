class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token
    
    def show 
        user = User.find_by(username: params[:id])
        if user
            render :json => user
        else
            error = 'User not found.'
            render json: { error: error }, status: :not_found
            log_action(nil, error)
        end
    end 

    def create 
        user = User.create(user_params)
        render :json => user
        log_action(user.id)
    end 

    private 
    def user_params
        params.require(:user).permit(:username, :bio, :fullname)
    end
end