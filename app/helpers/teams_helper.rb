module TeamsHelper
	def assign_players(players,total,sport)
		players = players.order(:updated_at)
		i = 0
		teams = []
		while i < total
			teams << players[i]
			i+=1
		end
		location = location_results(teams,sport)
		teams = Team.shuffle_rand_teams(teams,total)
		match = create_match(sport.id)
		# home = Team.create_teams(teams[:Home],true,sport_id)
		# away = Team.create_teams(teams[:Away],false,sport_id)
	end
end
