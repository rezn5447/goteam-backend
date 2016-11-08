# require_relative "../helpers/users_helper"

class Team < ApplicationRecord

  belongs_to :sport
  belongs_to :match
  has_many :userteams

  validates :season, :home, presence: true
  validates :score, numericality:{only_integer: true}

  def self.shuffle_rand_teams(teams,total)
    teams = teams.shuffle
    team_num = total/2
    {Home:teams[0...team_num],Away:teams[team_num..-1]}
  end

  def self.create_teams(boo,sport_id,match_id)
    season = season?
    team = Team.new(sport_id:sport_id,home:boo,season:season,match_id:match_id)
  end

  def self.update_match_rating(side,point)
    userteams = side.userteams
    userteams.each do |userteam|
      stat = userteam.user.stat
      update_rating = stat.rating + point
      stat.rating = update_rating
      stat.save
      return stat.errors.full_messages if stat.errors.full_messages != nil
    end
  end

  def self.calculate_rating(home,away)
    if home.score > away.core
      {home: 2, away: -2}
    elsif home.score < away.score
      {home: -2, away: 2}
    else
      {home: 0, away: 0}
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
