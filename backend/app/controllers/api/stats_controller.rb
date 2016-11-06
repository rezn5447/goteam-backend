class Api::StatsController < ApplicationController

	def index
		respond_to do |format|
			user = user_exist?("jgbCP2MuzW5yAPkGGWEmzQ",params[:user_id])
			if user
				stat = user.stats
				format.html {render json: stat}
				format.json {render json: stat}
			else
				format.html {render json: "User does not exist"}
				format.json {render json: "User does not exist"}
			end
		end
	end

	def create
		respond_to do |format|
			user = user_exist?("jgbCP2MuzW5yAPkGGWEmzQ",params[:user_id])
			stat = Stat.new(user_id:params[:user_id],sport_id: params[:sport_id], active: true)
			if user && stat.save
				format.html {render json: stat}
				format.json {render json: stat}
			else
				format.html {render json: stat.errors.full_messages}
				format.json {render json: stat.errors.full_messages}
			end		
		end	
	end

	def update
		respond_to do |format|
			user = user_exist?("jgbCP2MuzW5yAPkGGWEmzQ",params[:user_id])
			if user
				stat = Stat.find(params[:id])
				if stat				
					update_stat(params,stat)
					format.html {render json: stat}
					format.json {render json: stat}
				else
					format.html {render json: {message: "User's stat does not exist"}}
					format.json {render json: {message: "User's stat does not exist"}}
				end
			else
				format.html {render json: {message: "User does not exist"}}
				format.json {render json: {message:"User does not exist"}}
			end
		end
	end

end