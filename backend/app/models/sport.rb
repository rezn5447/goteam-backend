class Sport < ApplicationRecord
  has_many :ratings
  has_many :teams
  has_many :matches
  has_many :actives

  validates :name, presence: true
end
