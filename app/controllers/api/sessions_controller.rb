class Api::SessionsController < ApplicationController

  def create
    p "%"*30
    p params
    respond_to do |format|
      user = User.authenticate(user_params[:email],user_params[:password])
      if user
        format.html {render json: pass_user_params(user)}
        format.json {render json: pass_user_params(user)}
      else
        format.html {render json: {message: "User does not exist"}}
        format.json {render json: {message:"User does not exist"}}
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:email,:password)
  end

end
