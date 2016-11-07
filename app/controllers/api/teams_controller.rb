class Api::TeamsController < ApplicationController
	def create
		p "%"*20
		# user = user_exist?("jgbCP2MuzW5yAPkGGWEmzQ",params[:id])
		user = User.find(params[:user_id])
		if user
			stat = user.stats.find_by(sport_id:params[:sport_id])
			sport = Sport.find(params[:sport_id])
			total_players = sport.total_players
			active_players = sport.stats.where(active:true, division:user)
			if active_players.count >= total_players
				p active_players
			else

			end
		else
		end
	end
end