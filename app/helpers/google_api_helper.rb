module GoogleApiHelper

  def location_results(players,sport)
    # 15 miles = 24140.2 meters
    # 20 miles = 32186.9
    # 25 = 40233.6
    radius = 32186
    sport = sport.category
    address = players[0].street + " " + players[0].city + " "+ players[0].state + " " + players[0].zip.to_s
    geoloc = geolocate(address)
    final_loc = sports_in_area(geoloc,radius,sport)
    players.each do |player|
      address = player.street + " " + player.city + " "+ player.state + " " + player.zip.to_s
      geoloc = geolocate(address)
      all_loc = sports_in_area(geoloc,radius,sport)
      final_loc = all_loc & final_loc
    end
    final_loc
  end

  def geolocate(address)
    response = HTTParty.get("https://maps.googleapis.com/maps/api/geocode/json?address=#{address}&key=#{ENV['LOK']}")
    geoloc = response.first[1][0]['geometry']['location']
  end

  def sports_in_area(geolocation,radius,sport)
    results = []
    response = HTTParty.get("https://maps.googleapis.com/maps/api/place/textsearch/json?query=#{sport}+courts&location=#{geolocation["lat"]},#{geolocation["lng"]}&radius=#{radius}&key=#{ENV['LOK']}")
    p response
    response['results'].each do |result|
      results << [result['formatted_address'], result['name']]
    end
    results
  end
end

