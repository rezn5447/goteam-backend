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

User.create!(first_name: "Fuck",
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
 total_players: 2, name:"Singles", description:"Tennis is a racket sport that can be played individually against a single opponent (singles) or between two teams of two players each (doubles). Each player uses a tennis racket that is strung with cord to strike a hollow rubber ball covered with felt over or around a net and into the opponent's court. The object of the game is to play the ball in such a way that the opponent is not able to play a valid return. The player who is unable to return the ball will not gain a point, while the opposite player will."
 )
Sport.create!(category: "Tennis",name:"Doubles",
 total_players: 4, description: "Tennis is a racket sport that can be played individually against a single opponent (singles) or between two teams of two players each (doubles). Each player uses a tennis racket that is strung with cord to strike a hollow rubber ball covered with felt over or around a net and into the opponent's court. The object of the game is to play the ball in such a way that the opponent is not able to play a valid return. The player who is unable to return the ball will not gain a point, while the opposite player will."
 )
Sport.create!(category: "Soccer",name:"11 vs 11",
 total_players: 22, description: "Soccer is a game in which two opposing teams defend goals at opposite ends of a field having goal posts at each end, with points being scored chiefly by carrying the ball across the opponent's goal line and by place-kicking or drop-kicking the ball over the crossbar between the opponent's goal posts."
 )
Sport.create!(category: "Soccer",name:"6 vs 6",
 total_players: 12, description: "Soccer is a game in which two opposing teams defend goals at opposite ends of a field having goal posts at each end, with points being scored chiefly by carrying the ball across the opponent's goal line and by place-kicking or drop-kicking the ball over the crossbar between the opponent's goal posts."
 )
Sport.create!(category: "Badminton",name:"Singles",
 total_players: 2, description: "Badminton is a game played on a rectangular court by two players or two pairs of players equipped with light rackets used to volley a shuttlecock over a high net that divides the court in half."
 )
Sport.create!(category: "Badminton",name:"Doubles",
 total_players: 4, description: "Badminton is a game played on a rectangular court by two players or two pairs of players equipped with light rackets used to volley a shuttlecock over a high net that divides the court in half."
 )
Sport.create!(category: "Table Tennis",name:"Singles",
 total_players: 2, description: "Table tennis, also known as ping pong, is a sport in which two or four players hit a lightweight ball back and forth across a table using a small bat. The game takes place on a hard table divided by a net. Except for the initial serve, the rules are generally as follows: players must allow a ball played toward them to bounce one time on their side of the table, and must return it so that it bounces on the opposite side at least once. A point is scored when a player fails to return the ball within the rules. Play is fast and demands quick reactions. Spinning the ball alters its trajectory and limits an opponent's options, giving the hitter a great advantage."
 )
Sport.create!(category: "Table Tennis",name:"Doubles",
 total_players: 4, description:"Table tennis, also known as ping pong, is a sport in which two or four players hit a lightweight ball back and forth across a table using a small bat. The game takes place on a hard table divided by a net. Except for the initial serve, the rules are generally as follows: players must allow a ball played toward them to bounce one time on their side of the table, and must return it so that it bounces on the opposite side at least once. A point is scored when a player fails to return the ball within the rules. Play is fast and demands quick reactions. Spinning the ball alters its trajectory and limits an opponent's options, giving the hitter a great advantage."
 )
Stat.create!(active: "true" , user_id: 1, sport_id: 1 )
Stat.create!(active: "true" , user_id: 1, sport_id: 2 )
Stat.create!(active: "true" , user_id: 1, sport_id: 3 )
Stat.create!(active: "true" , user_id: 1, sport_id: 4 )
Stat.create!(active: "true" , user_id: 1, sport_id: 5 )
Stat.create!(active: "true" , user_id: 1, sport_id: 6 )


150.times do
  user = User.create!(first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    street: addresses[rand(0..9)][:street],
    city: addresses[rand(0..9)][:city],
    state: addresses[rand(0..9)][:state],
    zip: addresses[rand(0..9)][:zip],
    email: Faker::Internet.email,
    phone: Faker::PhoneNumber.phone_number,
    password: "password",
    )
  sport_id = rand(1..8)
  Stat.create!(active: "false" , user_id: user.id, sport_id: sport_id )
end

100.times do
  mth = rand(1..12)
  date = rand(1..30)
  time = ["09:00","12:00","15:00","18:00"].sample
  Match.create!(location: '123 Main St SF, CA',
   date: "2016-#{mth}-#{date} #{time}",
   sport_id: rand(1..8))
end

Match.where(sport_id:1).each do |match|
  user_length = Stat.where(sport_id:1).count
  home = Team.create!(
    sport_id:match.sport_id ,
    match_id: match.id,
    season: "Fall 2016",
    score: rand(0..2),
    home: "true")
  away = Team.create!(
    sport_id: match.sport_id,
    match_id: match.id,
    season: "Fall 2016",
    score: rand(0..2),
    home: "false")
  user = Stat.where(sport_id:1)[rand(0...user_length)].user
  Userteam.create!(user_id:user.id,team_id:home.id)
  user = Stat.all.where(sport_id:1)[rand(0...user_length)].user
  Userteam.create!(user_id:user.id,team_id:away.id)
end

Match.where(sport_id:2).each do |match|
  user_length = Stat.where(sport_id:2).count
  home = Team.create!(
    sport_id: match.sport_id,
    match_id: match.id,
    season: "Fall 2016",
    score: rand(0..2),
    home: :"true")
  away = Team.create!(
    sport_id: match.sport_id,
    match_id: match.id,
    season: "Fall 2016",
    score: rand(0..2),
    home: :"false")
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
  home = Team.create!(
    sport_id: match.sport_id,
    match_id: match.id,
    season: "Fall 2016",
    score: rand(0..2),
    home: :"true")
  away = Team.create!(
    sport_id: match.sport_id,
    match_id: match.id,
    season: "Fall 2016",
    score: rand(0..2),
    home: :"false")
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
  home = Team.create!(
    sport_id: match.sport_id,
    match_id: match.id,
    season: "Fall 2016",
    score: rand(0..2),
    home: :"true")
  away = Team.create!(
    sport_id: match.sport_id,
    match_id: match.id,
    season: "Fall 2016",
    score: rand(0..2),
    home: :"false")
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
  home = Team.create!(
    sport_id: match.sport_id,
    match_id: match.id,
    season: "Fall 2016",
    score: rand(0..2),
    home: :"true")
  away = Team.create!(
    sport_id: match.sport_id,
    match_id: match.id,
    season: "Fall 2016",
    score: rand(0..2),
    home: :"false")
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
  home = Team.create!(
    sport_id: match.sport_id,
    match_id: match.id,
    season: "Fall 2016",
    score: rand(0..2),
    home: :"true")
  away = Team.create!(
    sport_id: match.sport_id,
    match_id: match.id,
    season: "Fall 2016",
    score: rand(0..2),
    home: :"false")
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
  home = Team.create!(
    sport_id: match.sport_id,
    match_id: match.id,
    season: "Fall 2016",
    score: rand(0..2),
    home: :"true")
  away = Team.create!(
    sport_id: match.sport_id,
    match_id: match.id,
    season: "Fall 2016",
    score: rand(0..2),
    home: :"false")
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
  home = Team.create!(
    sport_id: match.sport_id,
    match_id: match.id,
    season: "Fall 2016",
    score: rand(0..2),
    home: :"true")
  away = Team.create!(
    sport_id: match.sport_id,
    match_id: match.id,
    season: "Fall 2016",
    score: rand(0..2),
    home: :"false")
  2.times do
    user = Stat.all.where(sport_id:8)[rand(0...user_length)].user
    Userteam.create!(user_id:user.id,team_id:home.id)
  end
  2.times do
    user = Stat.all.where(sport_id:8)[rand(0...user_length)].user
    Userteam.create!(user_id:user.id,team_id:away.id)
  end
end

100.times do
  user = User.create!(first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    street: addresses[rand(0..9)][:street],
    city: addresses[rand(0..9)][:city],
    state: addresses[rand(0..9)][:state],
    zip: addresses[rand(0..9)][:zip],
    email: Faker::Internet.email,
    phone: Faker::PhoneNumber.phone_number,
    password: "password",
    )
  sport_id = rand(1..8)
  Stat.create!(active: "true" , user_id: user.id, sport_id: sport_id )
end
