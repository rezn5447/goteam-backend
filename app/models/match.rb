class Match < ApplicationRecord
  has_many :teams
  belongs_to :sport

  validates :location, presence: true
end
