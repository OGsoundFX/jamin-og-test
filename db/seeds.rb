require_relative 'seed_instruments'
require_relative 'seed_users'



user_1 = User.find_by(email:'miguel@lopez.com')
user_2 = User.find_by(email:'bob@gmail.com')
user_3 = User.find_by(email:'lara@lara.com')


jam_sessions = [
  {
    title: "Rock semester",
    description: "School is out, it's time to rock everyday and every night!",
    location: "Rosenthaler Str. 4, 10119 Berlin",
    genre: "Rock",
    starts_at: "March, 15th 2020, 15:00",
    ends_at: "March, 15th 2020, 17:00",
    user: user_1,
    instruments: ['Bass guitar', 'Electric Guitar', 'Drums'],
  },
  {
    title: "Trippin",
    description: "Let us get together and experiment! John Coltrane, Miles Davis, Keith Jarret are my inspiration!",
    location: "Torstr. 109, 10119 Berlin",
    genre: "Jazz",
    starts_at: "March, 27th 2020, 14:00",
    ends_at: "March, 27th 2020, 19:00",
    user: user_1,
    instruments: ['Flute', 'Harmonica', 'Piano'],
  },
  {
    title: "Jam marathon",
    description: "I am planing to play 5 hours non-stop in order to get the creative juices flowing! Join me!",
    location: "Rudi-Dutschke-Straße 36, Berlin",
    genre: "Rock",
    starts_at: "March, 29th 2020, 10:00",
    ends_at: "March, 29th 2020, 15:00",
    user: user_2,
    instruments: ['Electric Guitar', 'Synthesizer', 'Drums', 'Bass guitar'],
  },
  {
    title: "Jazzy jazz",
    description: "I am mostly interested in new-wave jazz but open to try other styles too!",
    location: "Thomasiusstraße 1, 10119 Berlin",
    genre: "Jazz",
    starts_at: "March, 15th 2020, 12:00",
    ends_at: "March, 15th 2020, 15:00",
    user: user_3,
    instruments: ['Saxophone Alto', 'Oboe', 'Flute', 'Harmonica', 'Electric Piano'],
  },
  {
    title: "Another brick in the wall",
    description: "Leave them kids alone! I would like to play good old tunes and try and modify them.",
    location: "Thomasiusstraße 1, Berlin",
    genre: "Rock",
    starts_at: "March, 15th 2020, 18:00",
    ends_at: "March, 15th 2020, 21:00",
    user: user_2,
    instruments: ['Electric Guitar', 'Synthesizer', 'Drums', 'Bass guitar'],
  },
  {
    title: "Reggae Night",
    description: "Let's make some musik and get high!",
    location: "Goerlitzer park, Berlin",
    genre: "Reggae",
    starts_at: "January, 15th 2020, 18:00",
    ends_at: "January, 15th 2020, 21:00",
    user: user_2,
    instruments: ['Accoustic Guitar', 'Synthesizer', 'Drums', 'Bass guitar'],
  },
  {
    title: "Head Bang!",
    description: "Let's make some Heavy metal and bang our Heads!",
    location: "Goerlitzer park, Berlin",
    genre: "Heavy Metal",
    starts_at: "October, 20th 2019, 18:00",
    ends_at: "October, 20th 2019, 21:00",
    user: user_1,
    instruments: ['Electric Guitar1', 'Electric Guitar2', 'Drums', 'Bass guitar'],
  },
]


puts "---- deleting all JAMS ----"
JamSession.destroy_all


jam_sessions.each do |jam_session|
  instruments = jam_session[:instruments]
  instruments = jam_session.delete(:instruments)
  jam = JamSession.new(jam_session)
  jam.instruments = Instrument.where(name: instruments)
  jam.save!
end

puts "---- Created some JAMS ----"

puts "---- Creating some PARTICIPATIONS ----"



Participation.create(spot_id: 1, user_id: 8)
Participation.create(spot_id: 2, user_id: 2)
Participation.create(spot_id: 3, user_id: 1)

Participation.create(spot_id: 4, user_id: 11)
# Participation.create(spot_id: 5, user_id: 4)
Participation.create(spot_id: 6, user_id: 12)

Participation.create(spot_id: 7, user_id: 13)
Participation.create(spot_id: 8, user_id: 4)
Participation.create(spot_id: 9, user_id: 2)
# Participation.create(spot_id: 10, user_id: 2)

Participation.create(spot_id: 11, user_id: 14)
# Participation.create(spot_id: 12, user_id: 14)
Participation.create(spot_id: 13, user_id: 6)
Participation.create(spot_id: 14, user_id: 3)
# Participation.create(spot_id: 15, user_id: 14)

Participation.create(spot_id: 16, user_id: 10)
Participation.create(spot_id: 17, user_id: 4)
Participation.create(spot_id: 18, user_id: 2)
# Participation.create(spot_id: 19, user_id: 10)


Participation.create(spot_id: 20, user_id: 9)
Participation.create(spot_id: 21, user_id: 4)
Participation.create(spot_id: 22, user_id: 5)
Participation.create(spot_id: 23, user_id: 3)

Participation.create(spot_id: 24, user_id: 13)
Participation.create(spot_id: 25, user_id: 2)
Participation.create(spot_id: 26, user_id: 8)
Participation.create(spot_id: 27, user_id: 1)

puts "---- PARTICIPATIONS where created ----"

# Instrument.where(name: ['Drums', 'Guitar']).each do |instrument|
#   UserInstrument.create(instrument: instrument, user: user_1, level: "Beginner")
# end













