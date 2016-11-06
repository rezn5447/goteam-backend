class Stat < ApplicationRecord
	belongs_to :user
	belongs_to :sport

	validates :rating, :win, :user, :sport, :active, presence: true
end
