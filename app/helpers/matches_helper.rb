module MatchesHelper
  def find_players(userteams)
    team = []
    userteams.each do |userteam|
      team << pass_user_params(userteam.user)
    end
    team
  end
end
