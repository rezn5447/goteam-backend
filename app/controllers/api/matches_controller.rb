class Api::MatchesController < ApplicationController
  before_action do
    token_valid?(params[:token])
  end

  def index
    respond_to do |format|
       # user = user_exist?("IxTniH0SmMe9mqkCQOvjuQ",params[:user_id])
       user = User.find(params[:user_id])
       if user
        userteams = user.userteams
        matches = []
        userteams.each do |userteam|
          team = userteam.team
          match = team.match
          sport_name = match.sport.name
          category = match.sport.category
          matches << { "#{sport_name} #{category}": match}
        end
        format.html {render json: matches}
        format.js {render json: matches}
        format.json {render json: matches}
      else
        format.html {render json: "User does not exist"}
        format.js {render json: "User does not exist"}
        format.json {render json: "User does not exist"}
      end
    end
  end

  def show
    respond_to do |format|
        # user = user_exist?("IxTniH0SmMe9mqkCQOvjuQ",params[:user_id])
        user = User.find(params[:user_id])
        if user
          match = Match.find(params[:id])
          if match
            home = match.teams.find_by(home: "true")
            away = match.teams.find_by(home: "false")
            teams = {}
            teams[:Home] = find_players(home.userteams)
            teams[:Away] = find_players(away.userteams)
            match_inform = {Home:home,Home_team: teams[:Home],Away:away,Away_team:teams[:Away],match:match}
            format.html {render json: match_inform}
            format.js {render json: match_inform}
            format.json {render json: match_inform}
          else
            format.html {render json: {message: "Match does not exist"}}
            format.js {render json: {message: "Match does not exist"}}
            format.json {render json: {message: "Match does not exist"}}
          end
        else
          format.html {render json: "User does not exist"}
          format.js {render json: "User does not exist"}
          format.json {render json: "User does not exist"}
        end
      end
    end

    def update
      respond_to do |format|
      # user = user_exist?("IxTniH0SmMe9mqkCQOvjuQ",params[:user_id])
      user = User.find(params[:user_id])
      if user
        match = Match.find(params[:id])
        if match
          sport_id = match.sport.id
          teams = match.teams
          home = teams.find_by(home:"true")
          away = teams.find_by(home:"false")
          home.score = params[:home_team]
          away.score = params[:away_team]
          if home.save && away.save
            if home.updated? == "false" && away.updated? == "false"
              points = Team.calculate_rating(home,away)
              Team.update_match_rating(home,points[:home],sport_id)
              Team.update_match_rating(away,points[:away],sport_id)
              pass_inform = {user:user.stats.find_by(sport_id:sport_id),home:home,away:away}
              format.html {render json: pass_inform}
              format.js {render json: pass_inform}
              format.json {render json: pass_inform}
            else
              format.html {render json: "Scores has already been updated."}
              format.js {render json: "Scores has already been updated."}
              format.json {render json: "Scores has already been updated."}
            end
          else
            format.html {render json: team.errors.full_messages}
            format.js {render json: team.errors.full_messages}
            format.json {render json: team.errors.full_messages}
          end
        else
          format.html {render json: "Match does not exist"}
          format.js {render json: "Match does not exist"}
          format.json {render json: "Match does not exist"}
        end
      else
        format.html {render json: "User does not exist"}
        format.js {render json: "User does not exist"}
        format.json {render json: "User does not exist"}
      end
    end
  end

  def all
    respond_to do |format|
      matches = Match.all
      sports = Sport.all
      sports_match = []
      sports.each do |sport|
        sports_match << {"#{sport.category} #{sport.name}": matches.where(sport_id:sport.id)}
      end
      format.html {render json:sports_match}
      format.js {render json:sports_match}
      format.json {render json:sports_match}
    end
  end
end
