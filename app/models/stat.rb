class Stat < ApplicationRecord
	belongs_to :user
	belongs_to :sport

	validates :rating, :user, :sport, :active, :division, presence: true
	validates :rating, numericality:{only_integer:true}
	validates :rating, numericality:{greater_than_or_equal_to:0,less_than_equal_to:100}
	validates :user, uniqueness:{scope: :sport}

	def self.update_stat(params,stat)
			stat.update(active: params[:active]) if (params[:stat][:active] == "true" || params[:stat][:active] == "false")
				stat.update(rating: params[:rating]) if params[:rating]
				division = division?(stat)
				stat.update(division:division)
	end

	def self.division?(stat)
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
