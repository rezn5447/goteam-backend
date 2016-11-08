class Api::TeamsController < ApplicationController
	def create
		respond_to do |format|
			# user = user_exist?("jgbCP2MuzW5yAPkGGWEmzQ",params[:id])
			user = User.find(params[:user_id])
			if user
				stat = user.stats.find_by(sport_id:params[:sport_id])
				sport = stat.sport
				total_players = sport.total_players
				active_players = sport.stats.where(active:"true", division:stat.division)
				if active_players.count >= total_players
					result = assign_players(active_players,total_players,sport)
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

	def update
		respond_to do |format|
			# user = user_exist?("jgbCP2MuzW5yAPkGGWEmzQ",params[:id])
			user = User.find(params[:user_id])
			if user
				team = Team.find(params[:id])
				team.score = params[:score]
				if team.save
					format.html {render json:team}
					format.js {render json:team}
					format.json {render json:team}
				else
					format.html {render json: team.errors.full_messages}
					format.js {render json: team.errors.full_messages}
					format.json {render json: team.errors.full_messages}
				end
			else
				format.html {render json: {message: "User does not exist"}}
				format.js {render json: {message: "User does not exist"}}
				format.json {render json: {message: "User does not exist"}}
			end
		end
	end
end
