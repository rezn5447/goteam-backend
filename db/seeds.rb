addresses = [
        {street_address: '1515 Sutter St', city: 'San Francisco', state: 'CA', zip: '94109'},
        {street_address: '332 17th Ave', city: 'San Francisco', state: 'CA', zip: '94121'},
        {street_address: '138 Palm Avenue', city: 'San Francisco', state: 'CA', zip: '94118'},
        {street_address: '2775 Union Street', city: 'San Francisco', state: 'CA', zip: '94123'},
        {street_address: '475 Belvedere Street', city: 'San Francisco', state: 'CA', zip: '94117'},
        {street_address: '3975 20th Street', city: 'San Francisco', state: 'CA', zip: '94114'},
        {street_address: '1979 Fairbanks Street', city: 'San Leandro', state: 'CA', zip: '94577'},
        {street_address: '2092 W Ave 133rd', city: 'San Leandro', state: 'CA', zip: '94577'},
        {street_address: '1481 9th St', city: 'Oakland', state: 'CA', zip: '94607'},

        ]





addresses.each do User.create(first_name: Faker::Name.first_name,
                        last_name: Faker::Name.last_name,
                        street_address: street_address,
                        city: city,
                        state: state,
                        zip: zip,
                        email: Faker::Internet.email,
                        phone: Faker::PhoneNumber.phone_number,
                        password: "password",
                        active: true
                        )
end

sports = { tennis_singles: 1,
          tennis_doubles: 2,
          soccer: 11
        }

sports.each do |sport, num_of_players|
  Sports.create(name: sport,
                num_of_players: num_of_players
                )
end


