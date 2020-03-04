# JamSessionInstrument.destroy_all
# UserInstrument.destroy_all

Instrument.destroy_all
# JamSession.destroy_all


User.destroy_all

#USERS

puts "-- Generating users"

User.create([
  {email:"bob@gmail.com", password:123456, first_name:"Bob", last_name:"Sponge", bio:"I live in the sea"},
  {email:"oliv@gmail.com", password:123456, first_name:"Olivier", last_name:"Girardot", bio:"I believe I can fly"},
  {email:"miguel@lopez.com", password:123456, first_name:"Miguel", last_name:"Lopez", bio:"Let's experiment!"}
])

puts "-- Users are ready!"


#INSTRUMENTS (array of hashes)
instruments = [
  {
    name: 'Accordion',
    description: ''
  },
  {
    name: 'Bass guitar',
    description: 'Electric'
  },
  {
    name: 'Bass guitar',
    description: 'Accoustic'
  },
  {
    name: 'Bongo',
    description: ''
  },
  {
    name: 'Cello',
    description: ''
  },
  {
    name: 'Clarinet',
    description: ''
  },
  {
    name: 'Didgeridoo',
    description: ''
  },
  {
    name: 'Double bass',
    description: ''
  },
  {
    name: 'Drums',
    description: ''
  },
  {
    name: 'Flute',
    description: ''
  },
  {
    name: 'Glockenspiel',
    description: ''
  },
  {
    name: 'Guitar',
    description: 'Electric'
  },
  {
    name: 'Guitar',
    description: 'Accoustic'
  },
  {
    name: 'Harmonica',
    description: ''
  },
  {
    name: 'Oboe',
    description: ''
  },
  {
    name: 'Piano',
    description: 'Accoustic'
  },
  {
    name: 'Piano',
    description: 'Electric'
  },
  {
    name: 'Percussion',
    description: 'Bongo'
  },
  {
    name: 'Percussion',
    description: 'Congas'
  },
  {
    name: 'Percussion',
    description: 'Djembe'
  },
  {
    name: 'Percussion',
    description: 'Other'
  },
  {
    name: 'Saxophone',
    description: 'Alto'
  },
  {
    name: 'Saxophone',
    description: 'Soprano'
  },
  {
    name: 'Steeldrum',
    description: ''
  },
  {
    name: 'Synthesizer',
    description: ''
  },
  {
    name: 'Trumpet',
    description: ''
  },
  {
    name: 'Ukulele',
    description: ''
  },
  {
    name: 'Violin',
    description: ''
  },
]

puts "-- Generating instruments"

instruments.each do |instrument|
  inst = Instrument.new(instrument)
  inst.save!
end

puts "-- Instruments are ready!"


# jam = JamSession.new(
#   title: "Rock semester",
#   description: "School is out",
#   user: User.first
# )

# jam.instruments = Instrument.where(name: ['Guitar', 'Bass', 'Vocal'])
# jam.save!


# u = User.first
# u.instruments = Instrument.where(name: ['Drums', 'Guitar'])
# u.save!


























# # PROFILES
# User.create(email:"bob@gmail.com", password:123456, first_name:"Bob", last_name:"Sponge", bio:"I live in the sea")
# User.create(email:"oliv@gmail.com", password:123456, first_name:"Olivier", last_name:"Girardot", bio:"I believe I can fly")

# # USER-INTRUMENTS
# UserIntrument.create(instrument_id:10, user_id:1, level:"Intermediate", since:"3")
# UserIntrument.create(instrument_id:2, user_id:1, level:"Beginner", since:"1")
# UserIntrument.create(instrument_id:5, user_id:1, level:"Expert", since:"10")
# UserIntrument.create(instrument_id:7, user_id:2, level:"Intermediate", since:"4")
# UserIntrument.create(instrument_id:8, user_id:2, level:"Beginner", since:"0")
