class Api::StatsController < ApplicationController

	def create
		respond_to do |format|
			p params
			user = user_exist?("jgbCP2MuzW5yAPkGGWEmzQ",params[:user_id])
			stat = Stat.new(user_id:params[:user_id],sport_id: params[:stat][:sport_id], active: true)
			if user && stat.save
				format.html {render json: stat}
				format.json {render json: stat}
			else
				format.html {render json: stat.errors.full_messages}
				format.json {render json: stat.errors.full_messages}
			end		
		end
		
	end

end