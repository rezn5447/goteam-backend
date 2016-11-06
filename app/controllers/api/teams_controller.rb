class Api::TeamsController < ApplicationController
	def create
		p "%"*20
		sport = Sport.find(params[:sport_id])
		total_players = sport.total_players
		active_players = sport.stats.where(active:true)
		if active_players.count >= total_players
			p active_players
		else

		end
	end
end