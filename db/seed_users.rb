require 'open-uri'
#GENERATE USERS
# puts '-- Deleting all users'
# User.destroy_all
# UserInstrument.destroy_all
puts "-- Generating users"
users = [
  {
    email: "bob@gmail.com",
    password: 123456,
    first_name: "Bob",
    last_name: "Sponge",
    bio: "I am bartender recently settled in Berlin. I love to play various instruments such as guitar and percussions. I am Spanich born in Bercelona and I lived in many countries all over the world!
Originally, hi studied litterature and worked as a librarian. However, I followed my passion and dedicated my time to music while working as a bartended or a food delivery person. Let's play some music!",
    photo_url: 'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583413973/user-imgs/user_1_w88pku.jpg',
  },
  {
    email: "oliv@gmail.com",
    password: 123456,
    first_name: "Olivier",
    last_name: "Girardot",
    bio: "I am music composer and soud designer living in Berlin. I love to play various instruments which include Drums, guitar, flute and many more. I am French born in Los Angeles and I lived in many countries all over the world!
Originally, hi studied finance and worked as a statistician. However, I followed my passion and pursued a career as a composer and sound designer for the multimedia industry for over 10 years!",
    photo_url: 'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583413973/user-imgs/user_2_dip4wm.jpg',
  },
  {
    email: "miguel@lopez.com",
    password: 123456,
    first_name: "Miguel",
    last_name: "Lopez",
    bio: "Let's get together and experiment. I love to broaden my horizons. I am very excited to join this amazing community of musicians and I hope I will meet plenty of interesting people who share my music tastes. Let's get together
and rock the world !!! I can't wait for my next jam sessions. Contact me directly for any questions you may have about me, I would be happy to get in touch!",
    photo_url: 'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583413973/user-imgs/user_3_lkwf5j.jpg',
  },
  {
    email: "maria@mueller.com",
    password: 123456,
    first_name: "Maria",
    last_name: "Mueller",
    bio: "I really enjoy classical and rock music! Contradicting I know, but life is full of surprices!",
    photo_url: 'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583413973/user-imgs/user_4_micpcb.jpg',
  },
  {
    email: "lara@lara.com",
    password: 123456,
    first_name: "Lara",
    last_name: "Croft",
    bio: "Recently moved here and looking to expand my network by jamming with other musicians. Singing is my passion!",
    photo_url: 'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583413973/user-imgs/user_5_gvebti.jpg',
  },
  {
    email: "amy@weinhaus.com",
    password: 123456,
    first_name: "Amy",
    last_name: "Weinhaus",
    bio: "I love to sing, not only in the shower! I also like to play the guitar!",
    photo_url: 'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583413973/user-imgs/user_6_oehmid.jpg',
  },
]
all = Instrument.all
users.each do |user|
  photo_url = user[:photo_url]
  user.delete(:photo_url)
  usr = User.new(user)
  # p URI.open(photo_url)
  usr.photo.attach(io: URI.open(photo_url), filename: 'photo.jpg')
  usr.save!
end
User.all.each do |user|
  3.times do
    UserInstrument.create!(
      user: user,
      instrument: all.sample,
      level: %w(Beginner Intermediate Expert).sample,
      since: %w(2009 2002 2019 2010 2008 2003 2005 1999 2001).sample,
    )
  end
end
puts "-- Users are ready!"
