class Userteam < ApplicationRecord
  belongs_to :user
  belongs_to :team

  def self.join_team(players,side)
    result = ""
    players.each do |player|
      userteam = Userteam.new(user_id:player.id,team_id:side.id)
      if userteam.save
        result = "success"
      else
        result = userteam.errors.full_messages
      end
    end
    result
  end
end
