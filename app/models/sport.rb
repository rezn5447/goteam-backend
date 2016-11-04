class Sport < ApplicationRecord
  has_many :ratings
  has_many :teams
end
