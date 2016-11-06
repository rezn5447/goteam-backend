class Sport < ApplicationRecord
  has_many :stats
  has_many :teams
  has_many :matches

  validates :name, presence: true
end
