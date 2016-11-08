module TeamsHelper
	def assign_players(players,total,sport)
		teams = limit_players(players,total)
		# locations = location_results(teams,sport)
		teams = Team.shuffle_rand_teams(teams,total)
		match = Match.create_match(sport.id,"1770 Scott St, San Francisco, CA 94115")
		if match.save
			home = Team.create_teams("true",sport.id,match.id)
			away = Team.create_teams("false",sport.id,match.id)

			if home.save && away.save
				result = Userteam.join_team(teams[:Home],home)
				return result if result!= "success"
				result = Userteam.join_team(teams[:Home],home)
				return result if result!= "success"
				{Home:home,Home_team: teams[:Home],Away:away,Away_team:teams[:Away],match:match}
			else
				return home.errors.full_messages if home.errors.full_messages != nil
				return away.errors.full_messages if away.errors.full_messages != nil
			end
		else
			match.errors.full_messages
		end
	end

	def limit_players(players,total)
		players = players.order(:updated_at)
		i = 0
		teams = []
		while i < total
			player = User.find(players[i].user_id)
			teams << player
			i+=1
		end
		teams
	end
end
