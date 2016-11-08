class Api::TeamsController < ApplicationController
	def create
		# user = user_exist?("jgbCP2MuzW5yAPkGGWEmzQ",params[:id])
		user = User.find(params[:user_id])
		if user
			stat = user.stats.find_by(sport_id:params[:sport_id])
			sport = stat.sport
			total_players = sport.total_players
			active_players = sport.stats.where(active:"true", division:stat.division)
			if active_players.count >= total_players
				assign_players(active_players,total_players,sport)
			else
				format.html {render json: {message: "Not enough players, please wait."}}
				format.js {render json: {message: "Not enough players, please wait."}}
				format.json {render json: {message: "Not enough players, please wait."}}
			end
		else
				format.html {render json: {message: "User does not exist"}}
				format.js {render json: {message: "User does not exist"}}
				format.json {render json: {message: "User does not exist"}}
		end
	end
end
