class Api::MatchesController < ApplicationController
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
          if home.updated? == "false" && away.updated? == "false"
            points = Team.calculate_rating(home,away)
            Team.update_match_rating(home,points[:home],sport_id)
            Team.update_match_rating(away,points[:away],sport_id)
            format.html {render json: user.stats.find_by(sport_id:sport_id)}
            format.js {render json: user.stats.find_by(sport_id:sport_id)}
            format.json {render json: user.stats.find_by(sport_id:sport_id)}
          else
            format.html {render json: "Scores has already been updated."}
            format.js {render json: "Scores has already been updated."}
            format.json {render json: "Scores has already been updated."}
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
end
