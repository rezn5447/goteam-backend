class Userteam < ApplicationRecord
  belongs_to :user
  belongs_to :team

  def self.join_team(players,side)
    players.each do |player|
      userteam = Userteam.new(user_id:player.id,team_id:side.id)
      if userteam.save
        "success"
      else
        userteam.errors.full_messages
      end
    end
  end
end
