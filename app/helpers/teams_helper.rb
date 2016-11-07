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
			home = Team.create_teams(teams[:Home],true,sport.id)
			away = Team.create_teams(teams[:Away],false,sport.id)
			if home.save && away.save

			else
				home.errors.full_messages || away.error.full_messages
			end
		else
			match.error.full_messages
		end

	end
end
