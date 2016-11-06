module StatsHelper
	def update_stat(params,stat)
		if params.include?("stat")
			stat.update(active: params[:stat][:active]) if params[:stat].include?("active") && (params[:stat][:active] == true || params[:stat][:active] == false)
			stat.update(win: params[:stat][:win]) if params[:stat].include?("win")
			stat.update(rating: params[:stat][:rating]) if params[:stat].include?("rating")
		end
	end
end