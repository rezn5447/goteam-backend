class Team < ApplicationRecord
  belongs_to :sport
  belongs_to :match
  has_many :userteams

  validates :season, :home, presence: true
end
