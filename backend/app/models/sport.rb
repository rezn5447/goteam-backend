class Sport < ApplicationRecord
  has_many :ratings
  has_many :teams
  has_many :matches

  validates :name, presence: true
end
