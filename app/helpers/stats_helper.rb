module StatsHelper
	def update_stat(params,stat)
		if params.include?("stat")
			stat.update(active: params[:stat][:active]) if params[:stat].include?("active") && (params[:stat][:active] == true || params[:stat][:active] == false)
			stat.update(win: params[:stat][:win]) if params[:stat].include?("win")
			if params[:stat].include?("rating")
				stat.update(rating: params[:stat][:rating]) 
				division = division?(stat)
				stat.update(division:division)
			end

		end
	end

	def division?(stat)
		if stat.rating >= 0 && stat.rating <= 30
			"Bronze"
		elsif stat.rating > 30 && stat.rating <= 50
			"Silver"
		elsif  stat.rating > 50 && stat.rating <= 70
			"Gold"
		elsif  stat.rating > 70 && stat.rating <= 90
			"Platinum"
		else
			"Diamond"
		end
	end
end