require_relative 'seed_instruments'
require_relative 'seed_users'



user_1 = User.find_by(email:'miguel@lopez.com')
user_2 = User.find_by(email:'bob@gmail.com')
user_3 = User.find_by(email:'lara@lara.com')


jam_sessions = [
  {
    title: "Rock semester",
    description: "School is out",
    location: "Rosenthaler Str. 4, 10119 Berlin",
    genre: "rock",
    starts_at: "March, 15th 2020, 15:00",
    ends_at: "March, 15th 2020, 17:00",
    user: user_1,
    instruments: ['Bass Guitar', 'Guitar', 'Drums'],
  },
  {
    title: "Trippin",
    description: "Let us get together and experiment!",
    location: "Torstr. 109, 10119 Berlin",
    genre: "jazz",
    starts_at: "March, 27th 2020, 14:00",
    ends_at: "March, 27th 2020, 19:00",
    user: user_1,
    instruments: ['Flute', 'Harmonica', 'Piano'],
  },
  {
    title: "Jam marathon",
    description: "I am planing to play 5 hours non-stop in order to get the creative juices flowing! Join me!",
    location: "Rudi-Dutschke-Straße 36, Berlin",
    genre: "rock",
    starts_at: "March, 29th 2020, 10:00",
    ends_at: "March, 29th 2020, 15:00",
    user: user_2,
    instruments: ['Guitar', 'Synthesizer', 'Drums', 'Bass Guitar'],
  },
  {
    title: "Jazzy jazz",
    description: "I am mostly interested in new-wave jazz but open to try other styles too!",
    location: "Thomasiusstraße 1, 10119 Berlin",
    genre: "jazz",
    starts_at: "March, 15th 2020, 12:00",
    ends_at: "March, 15th 2020, 15:00",
    user: user_3,
    instruments: ['Saxophone', 'Oboe', 'Flute', 'Harmonica', 'Piano'],
  },
  {
    title: "Another brick in the wall",
    description: "Leave them kids alone! I would like to play good old tunes and try and modify them.",
    location: "Thomasiusstraße 1, Berlin",
    genre: "rock",
    starts_at: "March, 15th 2020, 18:00",
    ends_at: "March, 15th 2020, 21:00",
    user: user_2,
    instruments: ['Guitar', 'Synthesizer', 'Drums', 'Bass Guitar'],
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

# Instrument.where(name: ['Drums', 'Guitar']).each do |instrument|
#   UserInstrument.create(instrument: instrument, user: user_1, level: "Beginner")
# end













