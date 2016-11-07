class Api::TeamsController < ApplicationController
	def create
		# user = user_exist?("jgbCP2MuzW5yAPkGGWEmzQ",params[:id])
		user = User.find(params[:user_id])
		if user
			stat = user.stats.find_by(sport_id:params[:sport_id])
			sport = stat.sport
			total_players = sport.total_players
			active_players = sport.stats.where(active:true, division:stat.division)
			if active_players.count >= total_players
				p assign_players(active_players,total_players,sport)
			else
				p "$"*20
			end
		else
		end
	end
end
