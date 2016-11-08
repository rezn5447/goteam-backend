class Api::SportsController < ApplicationController
  def index
    sports = Sport.all
    respond_to do |format|
      format.html {render json: pass_sport_params(sports)}
      format.js {render json: pass_sport_params(sports)}
      format.json {render json: pass_sport_params(sports)}
    end
  end
end
