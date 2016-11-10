class Api::StatsController < ApplicationController
	before_action do
		token_valid?(params[:token])
	end

	def index
		respond_to do |format|
			# user = user_exist?("IxTniH0SmMe9mqkCQOvjuQ",params[:user_id])
			user = User.find(params[:user_id])
			if user
				stats = user.stats
				details = {}
				i = 0
				stats.each do |stat|
					sport = stat.sport
					details["#{i}"] = [stat,{name:sport.name,total_players:sport.total_players,category:sport.category}]
					i+=1
				end
				format.html {render json: details}
				format.js {render json: details}
				format.json {render json: details}
			else
				format.html {render json: {message: "User does not exist"}}
				format.js {render json: {message: "User does not exist"}}
				format.json {render json: {message: "User does not exist"}}
			end
		end
	end

	def create
		respond_to do |format|
			# user = user_exist?("IxTniH0SmMe9mqkCQOvjuQ",params[:user_id])
			user = User.find(params[:user_id])
			stat = Stat.new(user_id:params[:user_id],sport_id: params[:sport_id], active: true)
			if user && stat.save
				format.html {render json: stat}
				format.js {render json: stat}
				format.json {render json: stat}
			else
				format.html {render json: stat.errors.full_messages}
				format.js {render json: stat.errors.full_messages}
				format.json {render json: stat.errors.full_messages}
			end
		end
	end

	def update
		respond_to do |format|
			# user = user_exist?("IxTniH0SmMe9mqkCQOvjuQ",params[:user_id])
			user = User.find(params[:user_id])
			if user
				stat = user.stats.find(params[:id])
				if stat
					Stat.update_stat(params,stat)
					format.html {render json: stat}
					format.js {render json: stat}
					format.json {render json: stat}
				else
					format.html {render json: {message: "User's stat does not exist"}}
					format.js {render json: {message: "User's stat does not exist"}}
					format.json {render json: {message: "User's stat does not exist"}}
				end
			else
				format.html {render json: {message: "User does not exist"}}
				format.js {render json: {message: "User does not exist"}}
				format.json {render json: {message: "User does not exist"}}
			end
		end
	end

	def find
		respond_to do |format|
			# user = user_exist?("IxTniH0SmMe9mqkCQOvjuQ",params[:user_id])
			user = User.find(params[:user_id])
			if user
				stat = Stat.where(sport_id:params[:sport_id], user_id:params[:user_id])[0]
				if stat
					format.html {render json: stat}
					format.js {render json: stat}
					format.json {render json: stat}
				else
					format.html {render json: {message:"Does not exist"}}
					format.js {render json: {message:"Does not exist"}}
					format.json {render json: {message:"Does not exist"}}
				end
			else
				format.html {render json: {message: "User does not exist"}}
				format.js {render json: {message: "User does not exist"}}
				format.json {render json: {message: "User does not exist"}}
			end
		end
	end

end
