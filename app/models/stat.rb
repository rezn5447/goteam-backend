class Stat < ApplicationRecord
	belongs_to :user
	belongs_to :sport

	validates :rating, :win, :user, :sport, :active, :division, presence: true
	validates :win,:rating, numericality:{only_integer:true}
	validates :win,numericality:{greater_than_or_equal_to:0}
	validates :rating, numericality:{greater_than_or_equal_to:0,less_than_equal_to:100}
end
