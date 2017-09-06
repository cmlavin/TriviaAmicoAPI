class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def create
    @user = User.new(username: params[:username], password: params[:password], email: params[:email])
    if @user.save
      render json: @user
    else
      render json: { message: "User not created." }
    end
  end

  def user_params
    params.require(:user).permit(:username, :password, :email)
  end
  
end
