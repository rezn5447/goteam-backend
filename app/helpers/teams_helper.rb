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
			home = Team.create_teams("true",sport.id,match.id)
			away = Team.create_teams("false",sport.id,match.id)
			if home.save && away.save
				teams[:Home].each do |player|
					userteam = Userteam.new(user_id:player.id,team_id:home.id)
					userteam.save
					return userteam.errors.full_messages if !userteam.save
				end
				teams[:Away].each do |player|
					userteam = Userteam.new(user_id:player.id,team_id:away.id)
					userteam.save
					return userteam.errors.full_messages if !userteam.save
				end
			else
				return home.errors.full_messages if home.errors.full_messages != nil
				return away.errors.full_messages if away.errors.full_messages != nil
			end
		else
			match.errors.full_messages
		end
	end
end
