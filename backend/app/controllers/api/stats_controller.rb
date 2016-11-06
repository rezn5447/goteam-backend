class StatsController < ApplicationController
	before_action :user_exits?(cookies[:token],params[:user_id])


	def create
		user = User.find(params[:user_id])
	end
end