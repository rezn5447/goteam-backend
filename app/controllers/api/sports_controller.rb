class Api::SportsController < ApplicationController

  def index
    sports = Sport.all
    respond_to do |format|
      format.html {render json: pass_sport_params(sports)}
      format.js {render json: pass_sport_params(sports)}
      format.json {render json: pass_sport_params(sports)}
    end
  end

  def show
    sport = Sport.find(params[:id])
    respond_to do |format|
      sport = {id: sport.id, name: sport.name,total_players: sport.total_players, category:sport.category}
      format.html {render json: sport}
      format.js {render json: sport}
      format.json {render json: sport}
    end
  end
end
