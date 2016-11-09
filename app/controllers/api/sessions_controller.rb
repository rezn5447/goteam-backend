class Api::SessionsController < ApplicationController

  def create
    respond_to do |format|
      user = User.authenticate(params[:email],params[:password])
      if user
        format.html {render json: {user:pass_user_params(user),token: gen_token(user)}}
        format.js {render json: {user:pass_user_params(user),token: gen_token(user)}}
        format.json {render json: {user:pass_user_params(user),token: gen_token(user)}}
      else
        format.html {render json: {message: "User does not exist"}}
        format.js {render json: {message: "User does not exist"}}
        format.json {render json: {message:"User does not exist"}}
      end
    end
  end

end
