module GoogleApiHelper

  require 'dotenv-rails'

  def location_results(players,sport)
    #'66 Lunado Way San Francisco, CA'
    # 15 miles = 24140.2 meters
    # 20 miles = 32186.9
    # 25 = 40233.6
    radius = 32186
    sport = sport.category
    address = players[0].street + " " + players[0].city + " "+ players[0].state + " " + players[0].zip
    geoloc = geolocate(address)
    final_loc = sports_in_area(geoloc,radius,sport)

    players.each do |player|
      address = player.street + " " + player.city + " "+ player.state + " " + player.zip
      geoloc = geolocate(address)
      all_loc = sports_in_area(geoloc,radius,sport)
      final_loc = all_loc & final_loc
    end
  #   address1 = user.street + user.city + user.state
  #   address2 = '66 Lunado Way San Francisco, CA'
  #   sport = 'tennis'
  #   # radius = 8902
  #   # radius2 = 1980
  #   @geoloc = geolocate(address1)
  #   @geoloc2 = geolocate(address2)
  #   @finale1 = sports_in_area(@geoloc,radius,sport)
  #   @finale2 = sports_in_area(@geoloc2,radius2,sport)

  # # fantastic!
  # @finale_combined = @finale1 & @finale2
    final_loc
  end
  # def httpconcat(address)
  #   address.gsub!(" ", "+")
  #   address
  # end

  def geolocate(address)
    response = HTTParty.get("https://maps.googleapis.com/maps/api/geocode/json?address=#{httpconcat(address)}&key=#{ENV['LOK']}")
    geoloc = response.first[1][0]['geometry']['location']
  end

  def sports_in_area(geolocation,radius,sport)
    results = []
    response = HTTParty.get("https://maps.googleapis.com/maps/api/place/textsearch/json?query=#{sport}+courts&location=#{geolocation["lat"]},#{geolocation["lng"]}&radius=#{radius}&key=#{ENV['LOK']}")
    response['results'].each do |result|
      results << [result['formatted_address'], result['name']]
    end
    results
  end
end

