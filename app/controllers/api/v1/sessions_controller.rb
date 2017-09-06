class Api::V1::SessionsController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      payload = { user_id: user_id }
      token = issue_token(payload)
      render json: { jwt: token }
    else
      render json: { error: "Something went wrong." }
    end
  end
  
end
