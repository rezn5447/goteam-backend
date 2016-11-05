class UsersController < ApplicationController

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
    user = User.find(params[:id])
    respond_to do |format|
      if user && cookie[:token] == user.token
        format.json {render json: user}
      else
        format.json {render json: "User does not exist"}
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:email,:password,:first_name,:last_name,:street,:city,:state,:zip,:phone)
  end
end
