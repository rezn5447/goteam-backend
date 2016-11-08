class Match < ApplicationRecord
  has_many :teams
  belongs_to :sport

  validates :location, presence: true

  def self.create_match(sport_id,location)
    time = ["09:00","12:00""15:00""18:00"]
    weekend = [:sunday,:saturday].sample
    date = Time.now.next_week(weekend).strftime("%d/%m/%Y #{time.sample}")
    match = Match.new(location:location,sport_id:sport_id, date:date)
  end
end
