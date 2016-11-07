module SportsHelper
  def pass_sport_params(sports)
    config = []
    sports.each do |sport|
      in_config = {id: sport.id, name: sport.name,total_players: sport.total_players, category:sport.category}
      config << in_config
    end
    config
  end
end
