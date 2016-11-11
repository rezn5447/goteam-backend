addresses = [
  {street: '1515 Sutter St', city: 'San Francisco', state: 'CA', zip: '94109'},
  {street: '332 17th Ave', city: 'San Francisco', state: 'CA', zip: '94121'},
  {street: '138 Palm Avenue', city: 'San Francisco', state: 'CA', zip: '94118'},
  {street: '2775 Union Street', city: 'San Francisco', state: 'CA', zip: '94123'},
  {street: '475 Belvedere Street', city: 'San Francisco', state: 'CA', zip: '94117'},
  {street: '3975 20th Street', city: 'San Francisco', state: 'CA', zip: '94114'},
  {street: '1979 Fairbanks Street', city: 'San Leandro', state: 'CA', zip: '94577'},
  {street: '2092 W Ave 133rd', city: 'San Leandro', state: 'CA', zip: '94577'},
  {street: '1481 9th St', city: 'Oakland', state: 'CA', zip: '94607'},
  {street: '1098 Sutter St', city: 'San Francisco', state: "CA", zip: "94109"}

]

User.create!(first_name: "Phuck",
  last_name: "Yu",
  street: addresses[0][:street],
  city: addresses[0][:city],
  state: addresses[0][:state],
  zip: addresses[0][:zip],
  email: "1@1.com",
  phone: Faker::PhoneNumber.phone_number,
  password: "1",
  )


Sport.create!(category: "Tennis",
 total_players: 2, name:"Singles", description:"Tennis singles is a racket sport that can be played individually against a single opponent. Each player uses a tennis racket that is strung with cord to strike a hollow rubber ball covered with felt over or around a net and into the opponent's court. The object of the game is to play the ball in such a way that the opponent is not able to play a valid return. The player who is unable to return the ball will not gain a point, while the opposite player will.", video_url: "https://www.youtube.com/embed/zVdWbWi7kI8"
 )
Sport.create!(category: "Tennis",name:"Doubles",
 total_players: 4, description: "Tennis doubles is a racket sport that can be played between two teams of two players each. Each player uses a tennis racket that is strung with cord to strike a hollow rubber ball covered with felt over or around a net and into the opponent's court. The object of the game is to play the ball in such a way that the opponent is not able to play a valid return. The player who is unable to return the ball will not gain a point, while the opposite player will.", video_url: "https://www.youtube.com/embed/zVdWbWi7kI8"
 )
Sport.create!(category: "Soccer",name:"11 vs 11",
 total_players: 22, description: "Soccer is a game in which two opposing teams defend goals at opposite ends of a field having goal posts at each end, with points being scored chiefly by carrying the ball across the opponent's goal line and by place-kicking or drop-kicking the ball over the crossbar between the opponent's goal posts.", video_url: "https://www.youtube.com/embed/89SOKQADuR0"
 )
Sport.create!(category: "Soccer",name:"6 vs 6",
 total_players: 12, description: "Soccer is a game in which two opposing teams defend goals at opposite ends of a field having goal posts at each end, with points being scored chiefly by carrying the ball across the opponent's goal line and by place-kicking or drop-kicking the ball over the crossbar between the opponent's goal posts.", video_url: "https://www.youtube.com/embed/zVdWbWi7kI8"
 )
Sport.create!(category: "Badminton",name:"Singles",
 total_players: 2, description: "Badminton is a game played on a rectangular court by two players or two pairs of players equipped with light rackets used to volley a shuttlecock over a high net that divides the court in half.", video_url: "https://www.youtube.com/embed/rrjCTSOU5Z8"
 )
Sport.create!(category: "Badminton",name:"Doubles",
 total_players: 4, description: "Badminton is a game played on a rectangular court by two players or two pairs of players equipped with light rackets used to volley a shuttlecock over a high net that divides the court in half.", video_url:"https://www.youtube.com/embed/RWrD5FZAYrE"
 )
Sport.create!(category: "Table Tennis",name:"Singles",
 total_players: 2, description: "Table tennis, also known as ping pong, is a sport in which two or four players hit a lightweight ball back and forth across a table using a small bat. The game takes place on a hard table divided by a net. Except for the initial serve, the rules are generally as follows: players must allow a ball played toward them to bounce one time on their side of the table, and must return it so that it bounces on the opposite side at least once. A point is scored when a player fails to return the ball within the rules. Play is fast and demands quick reactions. Spinning the ball alters its trajectory and limits an opponent's options, giving the hitter a great advantage.", video_url: "https://www.youtube.com/embed/jjbFbNiG_iY"
 )
Sport.create!(category: "Table Tennis",name:"Doubles",
 total_players: 4, description:"Table tennis, also known as ping pong, is a sport in which two or four players hit a lightweight ball back and forth across a table using a small bat. The game takes place on a hard table divided by a net. Except for the initial serve, the rules are generally as follows: players must allow a ball played toward them to bounce one time on their side of the table, and must return it so that it bounces on the opposite side at least once. A point is scored when a player fails to return the ball within the rules. Play is fast and demands quick reactions. Spinning the ball alters its trajectory and limits an opponent's options, giving the hitter a great advantage.", video_url: "https://www.youtube.com/embed/jjbFbNiG_iY"
 )
Sport.create!(category: "Flag Football", name:"5 vs 5",
 total_players: 10, description: "Flag football is a version of US-American football or Canadian football where the basic rules of the game are similar to those of the mainstream game (often called 'tackle football' for contrast), but instead of tackling players to the ground, the defensive team must remove a flag or flag belt from the ball carrier ('deflagging') to end a down.",video_url: "https://www.youtube.com/embed/FxAm2ilt6_o"
 )
Sport.create!(category: "Flag Football",name:"7 vs 7",
 total_players: 14, description: "Flag football is a version of US-American football or Canadian football where the basic rules of the game are similar to those of the mainstream game (often called 'tackle football' for contrast), but instead of tackling players to the ground, the defensive team must remove a flag or flag belt from the ball carrier ('deflagging') to end a down.",video_url: "https://www.youtube.com/embed/FxAm2ilt6_o"
 )
Sport.create!(category: "Basketball",name:"3 vs 3",
 total_players: 6, description: "Basketball is a sport, generally played by two teams of five players on a rectangular court. The objective is to shoot a ball through a hoop 18 inches (46 cm) in diameter and mounted at a height of 10 feet (3.048 m) to backboards at each end of the court. A team can score a field goal by shooting the ball through the basket being defended by the opposition team during regular play. A field goal scores three points for the shooting team if the player shoots from behind the three-point line, and two points if shot from in front of the line. A team can also score via free throws, which are worth one point, after the other team is assessed with certain fouls. The team with the most points at the end of the game wins, but additional time (overtime) is issued when the score is tied at the end of regulation. The ball can be advanced on the court by throwing it to a teammate, or by bouncing it while walking or running (dribbling). It is a violation to lift, or drag, one's pivot foot without dribbling the ball, to carry it, or to hold the ball with both hands then resume dribbling.",video_url:"https://www.youtube.com/embed/bN6LywHcihI"
 )
Sport.create!(category: "Basketball",name:"5 vs 5",
 total_players: 10, description: "Basketball is a sport, generally played by two teams of five players on a rectangular court. The objective is to shoot a ball through a hoop 18 inches (46 cm) in diameter and mounted at a height of 10 feet (3.048 m) to backboards at each end of the court. A team can score a field goal by shooting the ball through the basket being defended by the opposition team during regular play. A field goal scores three points for the shooting team if the player shoots from behind the three-point line, and two points if shot from in front of the line. A team can also score via free throws, which are worth one point, after the other team is assessed with certain fouls. The team with the most points at the end of the game wins, but additional time (overtime) is issued when the score is tied at the end of regulation. The ball can be advanced on the court by throwing it to a teammate, or by bouncing it while walking or running (dribbling). It is a violation to lift, or drag, one's pivot foot without dribbling the ball, to carry it, or to hold the ball with both hands then resume dribbling.",video_url:"https://www.youtube.com/embed/wYjp2zoqQrs"
 )
Sport.create!(category: "Volleyball",name:"2 vs 2",
 total_players: 4, description: "Volleyball is a team sport in which two teams of six players are separated by a net. Each team tries to score points by grounding a ball on the other team's court under organized rules. It has been a part of the official program of the Summer Olympic Games since 1964. The complete rules are extensive. But simply, play proceeds as follows: a player on one of the teams begins a 'rally' by serving the ball (tossing or releasing it and then hitting it with a hand or arm), from behind the back boundary line of the court, over the net, and into the receiving team's court. The receiving team must not let the ball be grounded within their court. The team may touch the ball up to 3 times but individual players may not touch the ball twice consecutively. Typically, the first two touches are used to set up for an attack, an attempt to direct the ball back over the net in such a way that the serving team is unable to prevent it from being grounded in their court.",video_url: "https://www.youtube.com/embed/RRoJt99uVss"
 )
Sport.create!(category: "Volleyball",name:"6 vs 6",
 total_players: 12, description: "Volleyball is a team sport in which two teams of six players are separated by a net. Each team tries to score points by grounding a ball on the other team's court under organized rules. It has been a part of the official program of the Summer Olympic Games since 1964. The complete rules are extensive. But simply, play proceeds as follows: a player on one of the teams begins a 'rally' by serving the ball (tossing or releasing it and then hitting it with a hand or arm), from behind the back boundary line of the court, over the net, and into the receiving team's court. The receiving team must not let the ball be grounded within their court. The team may touch the ball up to 3 times but individual players may not touch the ball twice consecutively. Typically, the first two touches are used to set up for an attack, an attempt to direct the ball back over the net in such a way that the serving team is unable to prevent it from being grounded in their court.",video_url: "https://www.youtube.com/embed/9g7nYQv-kPM"
 )

Sport.create!(category: "Bowling",name:"1 vs 1",
 total_players: 2, description: "Bowling is a sport in which a bowler rolls a bowling ball down a wood-structure or synthetic (polyurethane) lane and towards ten pins positioned at the end of the lane. The objective is to score points by knocking down as many pins as possible. Three finger holes are drilled into a traditional bowling ball, and weights vary considerably to make the sport playable for all ages. The pins are arranged in a triangular position by an automated machine. While professional ten-pin bowling tournaments are held in numerous countries, the sport is commonly played as a hobby by millions of people around the world.",video_url: "https://www.youtube.com/embed/kJ4S3uDc0f0"
 )

Sport.create!(category: "Golf",name:"1 vs 1",
 total_players: 2, description: "Golf is a club and ball sport in which players use various clubs to hit balls into a series of holes on a course in as few strokes as possible. Golf, unlike most ball games, does not require a standardized playing area. The game is played on a course with an arranged progression of either nine or 18 holes. Each hole on the course must contain a tee box to start from, and a putting green containing the actual hole or cup. There are other standard forms of terrain in between, such as the fairway, rough, and hazards, but each hole on a course is unique in its specific layout and arrangement.",video_url: "https://www.youtube.com/embed/PJmfhY2tB6M"
 )

Sport.create!(category: "Billiards",name:"1 vs 1",
 total_players: 2, description: "Any of several games played with hard balls of ivory or of a similar material that are driven with a cue on a cloth-covered table enclosed by a raised rim of rubber, especially a game played with a cue ball and two object balls on a table without pockets.",video_url: "https://www.youtube.com/embed/eDKt-kaOtGE"
 )

Sport.create!(category: "Rails",name:"1 vs 1",
 total_players: 2, description: "Ruby on Rails, or simply Rails, is a server-side web application framework written in Ruby under the MIT License. Rails is a model–view–controller (MVC) framework, providing default structures for a database, a web service, and web pages. It encourages and facilitates the use of web standards such as JSON or XML for data transfer, and HTML, CSS and JavaScript for display and user interfacing. In addition to MVC, Rails emphasizes the use of other well-known software engineering patterns and paradigms, including convention over configuration (CoC), don't repeat yourself (DRY), and the active record pattern.",video_url: "https://www.youtube.com/embed/GY7Ps8fqGdc"
 )

Sport.create!(category: "Ultimate Frisbee",name:"5 vs 5",
 total_players: 10, description: "Ultimate, originally known as ultimate frisbee, is a non-contact team sport originally played by players with a flying disc (frisbee). The term Frisbee, often used to generically describe all flying discs, is a registered trademark of the Wham-O toy company, and thus the sport is not referred to as Ultimate Frisbee. Points are scored by passing the disc to a teammate in the opposing end zone. Other basic rules are that players must not take steps while holding the disc, and interceptions, incomplete passes, and passes out of bounds are turnovers. Rain, wind, or occasionally other adversities can make for a testing match with rapid turnovers, heightening the pressure of play.",video_url: "https://www.youtube.com/embed/UnNUEvs2Ev0"
 )


Stat.create!( user_id: 1, sport_id: 1 ,rating: 64)
Stat.create!( user_id: 1, sport_id: 2 ,rating: 60)
Stat.create!( user_id: 1, sport_id: 3 ,rating: 80)
Stat.create!( user_id: 1, sport_id: 4 ,rating: 54)
Stat.create!( user_id: 1, sport_id: 5 ,rating: 48)
Stat.create!( user_id: 1, sport_id: 6 ,rating: 52)
Stat.create!( user_id: 1, sport_id: 7 ,rating: 64)
Stat.create!( user_id: 1, sport_id: 8 ,rating: 60)
Stat.create!( user_id: 1, sport_id: 9 ,rating: 62)
Stat.create!( user_id: 1, sport_id: 10 ,rating: 54)
Stat.create!( user_id: 1, sport_id: 11,rating: 48)
Stat.create!( user_id: 1, sport_id: 12,rating: 50)
Stat.create!( user_id: 1, sport_id: 13,rating: 60)
Stat.create!( user_id: 1, sport_id: 14,rating: 58)
Stat.create!( user_id: 1, sport_id: 15,rating: 55)
Stat.create!( user_id: 1, sport_id: 16,rating: 72)
Stat.create!( user_id: 1, sport_id: 17,rating: 76)
Stat.create!( user_id: 1, sport_id: 18,rating: 44)
Stat.create!( user_id: 1, sport_id: 19,rating: 46)


rating = (40..70).step(2).to_a
200.times do
  i = rand(0..9)
  user = User.create!(first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    street: addresses[i][:street],
    city: addresses[i][:city],
    state: addresses[i][:state],
    zip: addresses[i][:zip],
    email: Faker::Internet.email,
    phone: Faker::PhoneNumber.phone_number,
    password: "password",
    )
  sport_id = rand(1..19)
  Stat.create!(active: "false" , user_id: user.id, sport_id: sport_id, rating: rating.sample)
end

100.times do
  mth = rand(1..10)
  date = rand(1..28)
  time = ["09:00","12:00","15:00","18:00"].sample
  Match.create!(location: '123 Main St SF, CA',
   date: "2016-#{mth}-#{date} #{time}",
   sport_id: rand(1..19))
end

100.times do
  mth = rand(11..12)
  date = rand(15..28)
  time = ["09:00","12:00","15:00","18:00"].sample
  Match.create!(location: '123 Main St SF, CA',
   date: "2016-#{mth}-#{date} #{time}",
   sport_id: rand(1..19))
end




Match.where(sport_id:1).each do |match|
  user_length = Stat.where(sport_id:1).count
  if DateTime.strptime(match.date,"%Y-%m-%d %H:%M") < DateTime.new(2016,5,15)
    home = Team.create!(
      sport_id:match.sport_id ,
      match_id: match.id,
      season: "Fall 2016",
      "updated?": "true",
      score: rand(0..2),
      home: "true")
    away = Team.create!(
      sport_id: match.sport_id,
      match_id: match.id,
      season: "Fall 2016",
      "updated?": "true",
      score: rand(0..2),
      home: "false")
  else
    home = Team.create!(
      sport_id:match.sport_id ,
      match_id: match.id,
      season: "Fall 2016",
      home: "true")
    away = Team.create!(
      sport_id: match.sport_id,
      match_id: match.id,
      season: "Fall 2016",
      home: "false")
  end
  user = Stat.where(sport_id:1)[rand(0...user_length)].user
  Userteam.create!(user_id:user.id,team_id:home.id)
  user = Stat.all.where(sport_id:1)[rand(0...user_length)].user
  Userteam.create!(user_id:user.id,team_id:away.id)
end

Match.where(sport_id:2).each do |match|
  user_length = Stat.where(sport_id:2).count
  if DateTime.strptime(match.date,"%Y-%m-%d %H:%M") < DateTime.new(2016,5,15)
    home = Team.create!(
      sport_id:match.sport_id ,
      match_id: match.id,
      season: "Fall 2016",
      "updated?": "true",
      score: rand(0..2),
      home: "true")
    away = Team.create!(
      sport_id: match.sport_id,
      match_id: match.id,
      season: "Fall 2016",
      "updated?": "true",
      score: rand(0..2),
      home: "false")
  else
    home = Team.create!(
      sport_id:match.sport_id ,
      match_id: match.id,
      season: "Fall 2016",
      home: "true")
    away = Team.create!(
      sport_id: match.sport_id,
      match_id: match.id,
      season: "Fall 2016",
      home: "false")
  end
  2.times do
    user = Stat.all.where(sport_id:2)[rand(0...user_length)].user
    Userteam.create!(user_id:user.id,team_id:home.id)
  end
  2.times do
    user = Stat.all.where(sport_id:2)[rand(0...user_length)].user
    Userteam.create!(user_id:user.id,team_id:away.id)
  end
end

Match.where(sport_id:3).each do |match|
  user_length = Stat.where(sport_id:3).count
  if DateTime.strptime(match.date,"%Y-%m-%d %H:%M") < DateTime.new(2016,5,15)
    home = Team.create!(
      sport_id:match.sport_id ,
      match_id: match.id,
      season: "Fall 2016",
      score: rand(0..2),
      "updated?": "true",
      home: "true")
    away = Team.create!(
      sport_id: match.sport_id,
      match_id: match.id,
      season: "Fall 2016",
      "updated?": "true",
      score: rand(0..2),
      home: "false")
  else
    home = Team.create!(
      sport_id:match.sport_id ,
      match_id: match.id,
      season: "Fall 2016",
      home: "true")
    away = Team.create!(
      sport_id: match.sport_id,
      match_id: match.id,
      season: "Fall 2016",
      home: "false")
  end
  11.times do
    user = Stat.all.where(sport_id:3)[rand(0...user_length)].user
    Userteam.create!(user_id:user.id,team_id:home.id)
  end
  11.times do
    user = Stat.all.where(sport_id:3)[rand(0...user_length)].user
    Userteam.create!(user_id:user.id,team_id:away.id)
  end
end

Match.where(sport_id:4).each do |match|
  user_length = Stat.where(sport_id:4).count
  if DateTime.strptime(match.date,"%Y-%m-%d %H:%M") < DateTime.new(2016,5,15)
    home = Team.create!(
      sport_id:match.sport_id ,
      match_id: match.id,
      season: "Fall 2016",
      "updated?": "true",
      score: rand(0..2),
      home: "true")
    away = Team.create!(
      sport_id: match.sport_id,
      match_id: match.id,
      season: "Fall 2016",
      "updated?": "true",
      score: rand(0..2),
      home: "false")
  else
    home = Team.create!(
      sport_id:match.sport_id ,
      match_id: match.id,
      season: "Fall 2016",
      home: "true")
    away = Team.create!(
      sport_id: match.sport_id,
      match_id: match.id,
      season: "Fall 2016",
      home: "false")
  end
  6.times do
    user = Stat.all.where(sport_id:4)[rand(0...user_length)].user
    Userteam.create!(user_id:user.id,team_id:home.id)
  end
  6.times do
    user = Stat.all.where(sport_id:4)[rand(0...user_length)].user
    Userteam.create!(user_id:user.id,team_id:away.id)
  end
end

Match.where(sport_id:5).each do |match|
  user_length = Stat.where(sport_id:5).count
  if DateTime.strptime(match.date,"%Y-%m-%d %H:%M") < DateTime.new(2016,5,15)
    home = Team.create!(
      sport_id:match.sport_id ,
      match_id: match.id,
      season: "Fall 2016",
      "updated?": "true",
      score: rand(0..2),
      home: "true")
    away = Team.create!(
      sport_id: match.sport_id,
      match_id: match.id,
      season: "Fall 2016",
      "updated?": "true",
      score: rand(0..2),
      home: "false")
  else
    home = Team.create!(
      sport_id:match.sport_id ,
      match_id: match.id,
      season: "Fall 2016",
      home: "true")
    away = Team.create!(
      sport_id: match.sport_id,
      match_id: match.id,
      season: "Fall 2016",
      home: "false")
  end
  1.times do
    user = Stat.all.where(sport_id:5)[rand(0...user_length)].user
    Userteam.create!(user_id:user.id,team_id:home.id)
  end
  1.times do
    user = Stat.all.where(sport_id:5)[rand(0...user_length)].user
    Userteam.create!(user_id:user.id,team_id:away.id)
  end
end

Match.where(sport_id:6).each do |match|
  user_length = Stat.where(sport_id:6).count
  if DateTime.strptime(match.date,"%Y-%m-%d %H:%M") < DateTime.new(2016,5,15)
    home = Team.create!(
      sport_id:match.sport_id ,
      match_id: match.id,
      season: "Fall 2016",
      "updated?": "true",
      score: rand(0..2),
      home: "true")
    away = Team.create!(
      sport_id: match.sport_id,
      match_id: match.id,
      season: "Fall 2016",
      "updated?": "true",
      score: rand(0..2),
      home: "false")
  else
    home = Team.create!(
      sport_id:match.sport_id ,
      match_id: match.id,
      season: "Fall 2016",
      home: "true")
    away = Team.create!(
      sport_id: match.sport_id,
      match_id: match.id,
      season: "Fall 2016",
      home: "false")
  end
  2.times do
    user = Stat.all.where(sport_id:6)[rand(0...user_length)].user
    Userteam.create!(user_id:user.id,team_id:home.id)
  end
  2.times do
    user = Stat.all.where(sport_id:6)[rand(0...user_length)].user
    Userteam.create!(user_id:user.id,team_id:away.id)
  end
end

Match.where(sport_id:7).each do |match|
  user_length = Stat.where(sport_id:7).count
  if DateTime.strptime(match.date,"%Y-%m-%d %H:%M") < DateTime.new(2016,5,15)
    home = Team.create!(
      sport_id:match.sport_id ,
      match_id: match.id,
      season: "Fall 2016",
      "updated?": "true",
      score: rand(0..2),
      home: "true")
    away = Team.create!(
      sport_id: match.sport_id,
      match_id: match.id,
      season: "Fall 2016",
      "updated?": "true",
      score: rand(0..2),
      home: "false")
  else
    home = Team.create!(
      sport_id:match.sport_id ,
      match_id: match.id,
      season: "Fall 2016",
      home: "true")
    away = Team.create!(
      sport_id: match.sport_id,
      match_id: match.id,
      season: "Fall 2016",
      home: "false")
  end
  1.times do
    user = Stat.all.where(sport_id:7)[rand(0...user_length)].user
    Userteam.create!(user_id:user.id,team_id:home.id)
  end
  1.times do
    user = Stat.all.where(sport_id:7)[rand(0...user_length)].user
    Userteam.create!(user_id:user.id,team_id:away.id)
  end
end

Match.where(sport_id:8).each do |match|
  user_length = Stat.where(sport_id:8).count
  if DateTime.strptime(match.date,"%Y-%m-%d %H:%M") < DateTime.new(2016,2,3)
    home = Team.create!(
      sport_id:match.sport_id ,
      match_id: match.id,
      season: "Fall 2016",
      "updated?": "true",
      score: rand(0..2),
      home: "true")
    away = Team.create!(
      sport_id: match.sport_id,
      match_id: match.id,
      season: "Fall 2016",
      "updated?": "true",
      score: rand(0..2),
      home: "false")
  else
    home = Team.create!(
      sport_id:match.sport_id ,
      match_id: match.id,
      season: "Fall 2016",
      home: "true")
    away = Team.create!(
      sport_id: match.sport_id,
      match_id: match.id,
      season: "Fall 2016",
      home: "false")
  end
  2.times do
    user = Stat.all.where(sport_id:8)[rand(0...user_length)].user
    Userteam.create!(user_id:user.id,team_id:home.id)
  end
  2.times do
    user = Stat.all.where(sport_id:8)[rand(0...user_length)].user
    Userteam.create!(user_id:user.id,team_id:away.id)
  end
end

Match.where(sport_id:10).each do |match|
  user_length = Stat.where(sport_id:10).count
  if DateTime.strptime(match.date,"%Y-%m-%d %H:%M") < DateTime.new(2016,2,3)
    home = Team.create!(
      sport_id:match.sport_id ,
      match_id: match.id,
      season: "Fall 2016",
      "updated?": "true",
      score: rand(0..2),
      home: "true")
    away = Team.create!(
      sport_id: match.sport_id,
      match_id: match.id,
      season: "Fall 2016",
      "updated?": "true",
      score: rand(0..2),
      home: "false")
  else
    home = Team.create!(
      sport_id:match.sport_id ,
      match_id: match.id,
      season: "Fall 2016",
      home: "true")
    away = Team.create!(
      sport_id: match.sport_id,
      match_id: match.id,
      season: "Fall 2016",
      home: "false")
  end
  7.times do
    user = Stat.all.where(sport_id:10)[rand(0...user_length)].user
    Userteam.create!(user_id:user.id,team_id:home.id)
  end
  7.times do
    user = Stat.all.where(sport_id:10)[rand(0...user_length)].user
    Userteam.create!(user_id:user.id,team_id:away.id)
  end
end

Match.where(sport_id:9).each do |match|
  user_length = Stat.where(sport_id:9).count
  if DateTime.strptime(match.date,"%Y-%m-%d %H:%M") < DateTime.new(2016,2,3)
    home = Team.create!(
      sport_id:match.sport_id ,
      match_id: match.id,
      season: "Fall 2016",
      "updated?": "true",
      score: rand(0..2),
      home: "true")
    away = Team.create!(
      sport_id: match.sport_id,
      match_id: match.id,
      season: "Fall 2016",
      "updated?": "true",
      score: rand(0..2),
      home: "false")
  else
    home = Team.create!(
      sport_id:match.sport_id ,
      match_id: match.id,
      season: "Fall 2016",
      home: "true")
    away = Team.create!(
      sport_id: match.sport_id,
      match_id: match.id,
      season: "Fall 2016",
      home: "false")
  end
  5.times do
    user = Stat.all.where(sport_id:9)[rand(0...user_length)].user
    Userteam.create!(user_id:user.id,team_id:home.id)
  end
  5.times do
    user = Stat.all.where(sport_id:9)[rand(0...user_length)].user
    Userteam.create!(user_id:user.id,team_id:away.id)
  end
end

Match.where(sport_id:11).each do |match|
  user_length = Stat.where(sport_id:11).count
  if DateTime.strptime(match.date,"%Y-%m-%d %H:%M") < DateTime.new(2016,2,3)
    home = Team.create!(
      sport_id:match.sport_id ,
      match_id: match.id,
      season: "Fall 2016",
      "updated?": "true",
      score: rand(0..2),
      home: "true")
    away = Team.create!(
      sport_id: match.sport_id,
      match_id: match.id,
      season: "Fall 2016",
      "updated?": "true",
      score: rand(0..2),
      home: "false")
  else
    home = Team.create!(
      sport_id:match.sport_id ,
      match_id: match.id,
      season: "Fall 2016",
      home: "true")
    away = Team.create!(
      sport_id: match.sport_id,
      match_id: match.id,
      season: "Fall 2016",
      home: "false")
  end
  3.times do
    user = Stat.all.where(sport_id:11)[rand(0...user_length)].user
    Userteam.create!(user_id:user.id,team_id:home.id)
  end
  3.times do
    user = Stat.all.where(sport_id:11)[rand(0...user_length)].user
    Userteam.create!(user_id:user.id,team_id:away.id)
  end
end

Match.where(sport_id:12).each do |match|
  user_length = Stat.where(sport_id:12).count
  if DateTime.strptime(match.date,"%Y-%m-%d %H:%M") < DateTime.new(2016,2,3)
    home = Team.create!(
      sport_id:match.sport_id ,
      match_id: match.id,
      season: "Fall 2016",
      "updated?": "true",
      score: rand(0..2),
      home: "true")
    away = Team.create!(
      sport_id: match.sport_id,
      match_id: match.id,
      season: "Fall 2016",
      "updated?": "true",
      score: rand(0..2),
      home: "false")
  else
    home = Team.create!(
      sport_id:match.sport_id ,
      match_id: match.id,
      season: "Fall 2016",
      home: "true")
    away = Team.create!(
      sport_id: match.sport_id,
      match_id: match.id,
      season: "Fall 2016",
      home: "false")
  end
  5.times do
    user = Stat.all.where(sport_id:12)[rand(0...user_length)].user
    Userteam.create!(user_id:user.id,team_id:home.id)
  end
  5.times do
    user = Stat.all.where(sport_id:12)[rand(0...user_length)].user
    Userteam.create!(user_id:user.id,team_id:away.id)
  end
end

Match.where(sport_id:13).each do |match|
  user_length = Stat.where(sport_id:13).count
  if DateTime.strptime(match.date,"%Y-%m-%d %H:%M") < DateTime.new(2016,2,3)
    home = Team.create!(
      sport_id:match.sport_id ,
      match_id: match.id,
      season: "Fall 2016",
      "updated?": "true",
      score: rand(0..2),
      home: "true")
    away = Team.create!(
      sport_id: match.sport_id,
      match_id: match.id,
      season: "Fall 2016",
      "updated?": "true",
      score: rand(0..2),
      home: "false")
  else
    home = Team.create!(
      sport_id:match.sport_id ,
      match_id: match.id,
      season: "Fall 2016",
      home: "true")
    away = Team.create!(
      sport_id: match.sport_id,
      match_id: match.id,
      season: "Fall 2016",
      home: "false")
  end
  2.times do
    user = Stat.all.where(sport_id:13)[rand(0...user_length)].user
    Userteam.create!(user_id:user.id,team_id:home.id)
  end
  2.times do
    user = Stat.all.where(sport_id:13)[rand(0...user_length)].user
    Userteam.create!(user_id:user.id,team_id:away.id)
  end
end

Match.where(sport_id:14).each do |match|
  user_length = Stat.where(sport_id:14).count
  if DateTime.strptime(match.date,"%Y-%m-%d %H:%M") < DateTime.new(2016,2,3)
    home = Team.create!(
      sport_id:match.sport_id ,
      match_id: match.id,
      season: "Fall 2016",
      "updated?": "true",
      score: rand(0..2),
      home: "true")
    away = Team.create!(
      sport_id: match.sport_id,
      match_id: match.id,
      season: "Fall 2016",
      "updated?": "true",
      score: rand(0..2),
      home: "false")
  else
    home = Team.create!(
      sport_id:match.sport_id ,
      match_id: match.id,
      season: "Fall 2016",
      home: "true")
    away = Team.create!(
      sport_id: match.sport_id,
      match_id: match.id,
      season: "Fall 2016",
      home: "false")
  end
  6.times do
    user = Stat.all.where(sport_id:14)[rand(0...user_length)].user
    Userteam.create!(user_id:user.id,team_id:home.id)
  end
  6.times do
    user = Stat.all.where(sport_id:14)[rand(0...user_length)].user
    Userteam.create!(user_id:user.id,team_id:away.id)
  end
end

Match.where(sport_id:15).each do |match|
  user_length = Stat.where(sport_id:15).count
  if DateTime.strptime(match.date,"%Y-%m-%d %H:%M") < DateTime.new(2016,2,3)
    home = Team.create!(
      sport_id:match.sport_id ,
      match_id: match.id,
      season: "Fall 2016",
      "updated?": "true",
      score: rand(0..2),
      home: "true")
    away = Team.create!(
      sport_id: match.sport_id,
      match_id: match.id,
      season: "Fall 2016",
      "updated?": "true",
      score: rand(0..2),
      home: "false")
  else
    home = Team.create!(
      sport_id:match.sport_id ,
      match_id: match.id,
      season: "Fall 2016",
      home: "true")
    away = Team.create!(
      sport_id: match.sport_id,
      match_id: match.id,
      season: "Fall 2016",
      home: "false")
  end
  1.times do
    user = Stat.all.where(sport_id:15)[rand(0...user_length)].user
    Userteam.create!(user_id:user.id,team_id:home.id)
  end
  1.times do
    user = Stat.all.where(sport_id:15)[rand(0...user_length)].user
    Userteam.create!(user_id:user.id,team_id:away.id)
  end
end

Match.where(sport_id:16).each do |match|
  user_length = Stat.where(sport_id:16).count
  if DateTime.strptime(match.date,"%Y-%m-%d %H:%M") < DateTime.new(2016,2,3)
    home = Team.create!(
      sport_id:match.sport_id ,
      match_id: match.id,
      season: "Fall 2016",
      "updated?": "true",
      score: rand(0..2),
      home: "true")
    away = Team.create!(
      sport_id: match.sport_id,
      match_id: match.id,
      season: "Fall 2016",
      "updated?": "true",
      score: rand(0..2),
      home: "false")
  else
    home = Team.create!(
      sport_id:match.sport_id ,
      match_id: match.id,
      season: "Fall 2016",
      home: "true")
    away = Team.create!(
      sport_id: match.sport_id,
      match_id: match.id,
      season: "Fall 2016",
      home: "false")
  end
  1.times do
    user = Stat.all.where(sport_id:16)[rand(0...user_length)].user
    Userteam.create!(user_id:user.id,team_id:home.id)
  end
  1.times do
    user = Stat.all.where(sport_id:16)[rand(0...user_length)].user
    Userteam.create!(user_id:user.id,team_id:away.id)
  end
end

Match.where(sport_id:17).each do |match|
  user_length = Stat.where(sport_id:17).count
  if DateTime.strptime(match.date,"%Y-%m-%d %H:%M") < DateTime.new(2016,2,3)
    home = Team.create!(
      sport_id:match.sport_id ,
      match_id: match.id,
      season: "Fall 2016",
      "updated?": "true",
      score: rand(0..2),
      home: "true")
    away = Team.create!(
      sport_id: match.sport_id,
      match_id: match.id,
      season: "Fall 2016",
      "updated?": "true",
      score: rand(0..2),
      home: "false")
  else
    home = Team.create!(
      sport_id:match.sport_id ,
      match_id: match.id,
      season: "Fall 2016",
      home: "true")
    away = Team.create!(
      sport_id: match.sport_id,
      match_id: match.id,
      season: "Fall 2016",
      home: "false")
  end
  1.times do
    user = Stat.all.where(sport_id:17)[rand(0...user_length)].user
    Userteam.create!(user_id:user.id,team_id:home.id)
  end
  1.times do
    user = Stat.all.where(sport_id:17)[rand(0...user_length)].user
    Userteam.create!(user_id:user.id,team_id:away.id)
  end
end

Match.where(sport_id:18).each do |match|
  user_length = Stat.where(sport_id:18).count
  if DateTime.strptime(match.date,"%Y-%m-%d %H:%M") < DateTime.new(2016,2,3)
    home = Team.create!(
      sport_id:match.sport_id ,
      match_id: match.id,
      season: "Fall 2016",
      "updated?": "true",
      score: rand(0..2),
      home: "true")
    away = Team.create!(
      sport_id: match.sport_id,
      match_id: match.id,
      season: "Fall 2016",
      "updated?": "true",
      score: rand(0..2),
      home: "false")
  else
    home = Team.create!(
      sport_id:match.sport_id ,
      match_id: match.id,
      season: "Fall 2016",
      home: "true")
    away = Team.create!(
      sport_id: match.sport_id,
      match_id: match.id,
      season: "Fall 2016",
      home: "false")
  end
  1.times do
    user = Stat.all.where(sport_id:18)[rand(0...user_length)].user
    Userteam.create!(user_id:user.id,team_id:home.id)
  end
  1.times do
    user = Stat.all.where(sport_id:18)[rand(0...user_length)].user
    Userteam.create!(user_id:user.id,team_id:away.id)
  end
end

Match.where(sport_id:19).each do |match|
  user_length = Stat.where(sport_id:19).count
  if DateTime.strptime(match.date,"%Y-%m-%d %H:%M") < DateTime.new(2016,2,3)
    home = Team.create!(
      sport_id:match.sport_id ,
      match_id: match.id,
      season: "Fall 2016",
      "updated?": "true",
      score: rand(0..2),
      home: "true")
    away = Team.create!(
      sport_id: match.sport_id,
      match_id: match.id,
      season: "Fall 2016",
      "updated?": "true",
      score: rand(0..2),
      home: "false")
  else
    home = Team.create!(
      sport_id:match.sport_id ,
      match_id: match.id,
      season: "Fall 2016",
      home: "true")
    away = Team.create!(
      sport_id: match.sport_id,
      match_id: match.id,
      season: "Fall 2016",
      home: "false")
  end
  5.times do
    user = Stat.all.where(sport_id:19)[rand(0...user_length)].user
    Userteam.create!(user_id:user.id,team_id:home.id)
  end
  5.times do
    user = Stat.all.where(sport_id:19)[rand(0...user_length)].user
    Userteam.create!(user_id:user.id,team_id:away.id)
  end
end

50.times do
 i = rand(0..9)
 user = User.create!(first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  street: addresses[i][:street],
  city: addresses[i][:city],
  state: addresses[i][:state],
  zip: addresses[i][:zip],
  email: Faker::Internet.email,
  phone: Faker::PhoneNumber.phone_number,
  password: "password"
  )
 sport_id = rand(1..19)
 Stat.create!(active: "true" , user_id: user.id, sport_id: 1 , rating: 64)
end

# 100.times do
#  i = rand(0..9)
#  user = User.create!(first_name: Faker::Name.first_name,
#   last_name: Faker::Name.last_name,
#   street: addresses[i][:street],
#   city: addresses[i][:city],
#   state: addresses[i][:state],
#   zip: addresses[i][:zip],
#   email: Faker::Internet.email,
#   phone: Faker::PhoneNumber.phone_number,
#   password: "password"
#   )
#  sport_id = rand(1..19)
#  Stat.create!(active: "true" , user_id: user.id, sport_id:sport_id , rating: rating.sample)
# end
