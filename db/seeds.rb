require_relative 'seed_users'
require_relative 'seed_instruments'

Participation.destroy_all
UserInstrument.destroy_all

JamSession.destroy_all


jam = JamSession.new(
  title: "Rock semester",
  description: "School is out",
  location: "Rosenthaler Str. 4, 10119 Berlin",
  genre: "rock",
  starts_at: "March, 15th 2020, 15:00",
  ends_at: "March, 15th 2020, 17:00",
  user: User.first
)

jam.instruments = Instrument.where(name: ['Guitar', 'Bass', 'Piano'])
jam.save!


Instrument.where(name: ['Drums', 'Guitar']).each do |instrument|
UserInstrument.create(instrument: instrument, user: User.first, level: "Beginner")
end
