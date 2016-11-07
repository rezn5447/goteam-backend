module TeamsHelper
	def assign_players(players,total,sport_id)
		players = players.order(:updated_at)
		i = 0
		teams = []
		while i < total
			teams << players[i]
			i+=1
		end
		teams = Team.shuffle_rand_teams(teams,total,sport_id)
		# match = create_match
		home = Team.create_teams(teams[:Home],true)
		away = Team.create_teams(teams[:Away],false)
	end
end
