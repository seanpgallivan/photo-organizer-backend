class UsersController < ApplicationController
    def show 
        user = User.find_by(username: params[:id])
        render :json => user
    end 

    def create 
        user = User.create(user_params)
        render :json => user
    end 

    private 
    def user_params
        params.require(:user).permit(:username, :bio, :fullname)
    end
end