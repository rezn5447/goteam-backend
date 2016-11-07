module TeamsHelper
	def assign_players(players,total,sport)
		players = players.order(:updated_at)
		i = 0
		teams = []
		while i < total
			player = User.find(players[i].user_id)
			teams << player
			i+=1
		end
		# locations = location_results(teams,sport)
		teams = Team.shuffle_rand_teams(teams,total)
		match = Match.create_match(sport.id,"1770 Scott St, San Francisco, CA 94115")
		if match.save
			p match
			home = Team.create_teams(teams[:Home],true,sport_id)
			# away = Team.create_teams(teams[:Away],false,sport_id)
		else
			match.error.full_messages
		end

	end
end
