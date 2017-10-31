class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def me
    render json: current_user
  end

  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user
    else
      render json: { message: "User not created." }
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :email)
  end

end
