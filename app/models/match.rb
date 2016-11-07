class Match < ApplicationRecord
  has_many :teams
  belongs_to :sport

  validates :location, presence: true

  def self.create_match(sport_id)

  end
end
