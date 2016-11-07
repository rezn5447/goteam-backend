class Team < ApplicationRecord
  belongs_to :sport
  belongs_to :match
  has_many :userteams

  validates :season, :home, presence: true

  def self.assign_players(players,total)
  	players = players.order(:updated_at)
  	teams = []
  	i = 0
  	while i < total
  		teams << players[i]
  		i+=1
  		assign_rand_teams(teams)
  	end 
  end

  private

  def self.assign_rand_teams(teams)
  	if
  end
end
