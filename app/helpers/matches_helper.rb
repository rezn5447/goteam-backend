module MatchesHelper
  def find_players(userteams)
    team = []
    userteams.each do |userteam|
      team << userteam.user
    end
    team
  end
end
