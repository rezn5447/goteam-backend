class Userteam < ApplicationRecord
  belongs_to :user
  belongs_to :team

  def self.join_team(players,side,sport_id)
    result = ""
    players.each do |player|
      userteam = Userteam.new(user_id:player.id,team_id:side.id)
      if userteam.save
        stat = player.stats.find_by(sport_id:sport_id)
        stat.update(active:"false")
        result = "success"
      else
        result = userteam.errors.full_messages
        return result
      end
    end
    result
  end
end
