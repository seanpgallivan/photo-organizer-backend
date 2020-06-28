class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token
    
    def show 
        user = User.find_by(username: params[:id])
        if user
            render json: user, status: :ok
        else
            send_error({username: ["User not found"]}, 404)
        end
    end 

    def create 
        user = User.new(user_params)
        if user.save
            send_ok(user)
        else
            send_error(user.errors, 500)
        end
    end 

    private 
    def user_params
        params.require(:user).permit(:username, :bio, :fullname)
    end
end