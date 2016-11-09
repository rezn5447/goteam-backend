class Api::UsersController < ApplicationController
  before_action only:[:show] do
    token_valid?(params[:token])
  end

  def create
    user = User.new(user_params)
    respond_to do |format|
      if user.save
        format.html {render json: pass_user_params(user)}
        format.js {render json: pass_user_params(user)}
        format.json {render json: pass_user_params(user)}
      else
        format.html {render json: user.errors.full_messages}
        format.js {render json: user.errors.full_messages}
        format.json {render json: user.errors.full_messages}
      end
    end
  end

  def show
    respond_to do |format|
      # user = user_exist?("jgbCP2MuzW5yAPkGGWEmzQ",params[:id])
      user = User.find(params[:id])
      if user
        format.html {render json: pass_user_params(user)}
        format.js {render json: pass_user_params(user)}
        format.json {render json: pass_user_params(user)}
      else
        format.html {render json: {message: "User does not exist"}}
        format.js {render json: {message: "User does not exist"}}
        format.json {render json: {message:"User does not exist"}}
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:email,:password,:first_name,:last_name,:street,:city,:state,:zip,:phone,:avatar)
  end
end
