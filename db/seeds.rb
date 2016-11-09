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
 total_players: 2, name:"Singles"
 )
Sport.create!(category: "Tennis",name:"Doubles",
 total_players: 4
 )
Sport.create!(category: "Soccer",name:"11 vs 11",
 total_players: 22
 )
Sport.create!(category: "Soccer",name:"6 vs 6",
 total_players: 12
 )
Sport.create!(category: "Badminton",name:"Singles",
 total_players: 2
 )
Sport.create!(category: "Badminton",name:"Doubles",
 total_players: 4
 )
Sport.create!(category: "Table Tennis",name:"Singles",
 total_players: 2
 )
Sport.create!(category: "Table Tennis",name:"Doubles",
 total_players: 4
 )
Stat.create!(active: "true" , user_id: 1, sport_id: 1 )

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
  Match.create!(location: '123 Main St SF, CA',
   date: "2016-11-12 15:00",
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
