module TeamsHelper
	def assign_players(players,total)
		players = players.order(:updated_at)
		i = 0
		teams = []
		while i < total
			teams << players[i]
			i+=1
		end 
		teams = assign_rand_teams(teams,total)
	end

	private

	def assign_rand_teams(teams,total)
		teams= teams.shuffle
		team_num = total/2
		{Home:teams[0...team_num],Away:teams[team_num..-1]} 
	end
end