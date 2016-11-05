class Api::UsersController < ApplicationController

  def create
    user = User.new(user_params)
    respond_to do |format|
      if user.save
        format.json {render json: user}
      else
        format.json {render json: user.errors.full_messages}
      end
    end
  end

  def show
    respond_to do |format|
      user = User.find(params[:id]) if User.exists?(params[:id])
      if user
        format.html {render json: user}
        format.json {render json: user}
      else
        format.html {render json: {message: "User does not exist"}}
        format.json {render json: {message:"User does not exist"}}
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:email,:password,:first_name,:last_name,:street,:city,:state,:zip,:phone)
  end
end
