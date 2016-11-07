class Team < ApplicationRecord
  belongs_to :sport
  belongs_to :match
  has_many :userteams

  validates :season, :home, presence: true

  def self.shuffle_rand_teams(teams,total,sport_id)
    teams= teams.shuffle
    team_num = total/2
    {Home:teams[0...team_num],Away:teams[team_num..-1]}
  end

  def self.create_teams(players, home)
    season = season?
    team = Team.new(sport_id:sport_id,Home:home,season:season)
    if team.save

    else
    end
  end

  private

  def self.season?
    month =  Time.now.strftime("%m").to_i
    year =  Time.now.strftime("%Y")
    if month == 12 || month <=2
      "Winter " + year
    elsif month > 2 && month <=5
      "Spring " + year
    elsif month > 5 && month <= 8
      "Summer " + year
    else
      "Fall " + year
    end
  end
end
