class Api::TeamsController < ApplicationController
	before_action do
		token_valid?(params[:token])
	end

	def create
		respond_to do |format|
			p "@"*20
			p params
			# user = user_exist?("jgbCP2MuzW5yAPkGGWEmzQ",params[:id])
			user = User.find(params[:user_id])
			if user
				stat = user.stats.find_by(sport_id:params[:sport_id])
				sport = stat.sport
				total_players = sport.total_players
				p"!"*20
				p user
				p"^"*20
				p total_players
				p"&"*20
				p sport
				p "~"*20
				p Stat.where(active:"true",sport_id:params[:sport_id])
				p "+"*20
				p stat.division
				active_stats = sport.stats.where(active:"true", division:stat.division)
				p "*"*20
				p active_stats.all
				p"$"*20
				p active_stats.count
				if active_stats.count >= total_players
					result = assign_players(active_stats,total_players,sport,stat)
					format.html {render json: result}
					format.js {render json: result}
					format.json {render json: result}
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
end
