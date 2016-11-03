10.times do User.create(first_name: Faker::Name.first_name,
                        last_name: Faker::Name.last_name,
                        street_address: Faker::Address.street_address,
                        city: Faker::Address.city,
                        state: Faker::Address.state_abbr,
                        zip: Faker::Address.zip_code,
                        email: Faker::Internet.email,
                        phone: Faker::PhoneNumber.phone_number,
                        password: "password",
                        active: true
}
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


