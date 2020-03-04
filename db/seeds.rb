require_relative 'seed_users'
require_relative 'seed_instruments'

Spot.destroy_all
UserInstrument.destroy_all

JamSession.destroy_all


jam = JamSession.new(
  title: "Rock semester",
  description: "School is out",
  user: User.first
)

jam.instruments = Instrument.where(name: ['Guitar', 'Bass', 'Piano'])
jam.save!


u = User.first
u.instruments = Instrument.where(name: ['Drums', 'Guitar'])
u.save!


























# # PROFILES
# User.create(email:"bob@gmail.com", password:123456, first_name:"Bob", last_name:"Sponge", bio:"I live in the sea")
# User.create(email:"oliv@gmail.com", password:123456, first_name:"Olivier", last_name:"Girardot", bio:"I believe I can fly")

# # USER-INTRUMENTS
# UserIntrument.create(instrument_id:10, user_id:1, level:"Intermediate", since:"3")
# UserIntrument.create(instrument_id:2, user_id:1, level:"Beginner", since:"1")
# UserIntrument.create(instrument_id:5, user_id:1, level:"Expert", since:"10")
# UserIntrument.create(instrument_id:7, user_id:2, level:"Intermediate", since:"4")
# UserIntrument.create(instrument_id:8, user_id:2, level:"Beginner", since:"0")
