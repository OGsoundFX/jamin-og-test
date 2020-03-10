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
  {
  email: "elvira@gmail.com",
  password: 123456,
  first_name: "Elvira",
  last_name: "Metal",
  bio: "I love Heavy Metal and screaming into a mic but I also play classical music at the violin!",
  photo_url: 'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583845558/user-imgs/Elvira_Metal_e0nxke.jpg',
},
  {
  email: "carolin@gmail.com",
  password: 123456,
  first_name: "Carolin",
  last_name: "Jane",
  bio: "I play Bass, Electric and Accoustic guitar, and I am looking forward to playing with you guys!",
  photo_url: 'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583845558/user-imgs/Caroline_Jane_teoevl.jpg',
},
  {
  email: "marley@gmail.com",
  password: 123456,
  first_name: "Bob",
  last_name: "Marley",
  bio: "Don't Gain The World & Lose Your Soul, Wisdom Is Better Than Silver Or Gold.",
  photo_url: 'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583845558/user-imgs/bobmarley_soru9y.jpg',
},
  {
  email: "harry@gmail.com",
  password: 123456,
  first_name: "Harry",
  last_name: "Potter",
  bio: "I love magic but also playing the bass!",
  photo_url: 'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583845557/user-imgs/Harry-Jones_kk8o2n.jpg',
},
  {
  email: "hubert@gmail.com",
  password: 123456,
  first_name: "Hubert",
  last_name: "Laws",
  bio: "I have been playing the flute for many years, I love jazz and Cuban music!",
  photo_url: 'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583845558/user-imgs/Hubert_Laws_igqo28.jpg',
},
  {
  email: "munji@gmail.com",
  password: 123456,
  first_name: "Munji",
  last_name: "Choi",
  bio: "I play the piano and the ukulele, I also occasionally sing",
  photo_url: 'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583845557/user-imgs/Minju_Choi_cek8qr.jpg',
},
  {
  email: "lucie@gmail.com",
  password: 123456,
  first_name: "Lucie",
  last_name: "Recadre",
  bio: "Hi, I'm a super nice girl and I love playing bass. Join my jam sessions!",
  photo_url: 'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583845558/user-imgs/Lucie-recadr%C3%A9e_ayf4rz.jpg',
},
  {
  email: "sophie@gmail.com",
  password: 123456,
  first_name: "Sophie",
  last_name: "Lapie",
  bio: "I am a huge fan of John Coltrane!",
  photo_url: 'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583845557/user-imgs/Sophie_Lapie_e5vovv.jpg',
},
  {
  email: "malvina@gmail.com",
  password: 123456,
  first_name: "Malvina",
  last_name: "Ivanov",
  bio: "I came from Russia to Berlin in 2015 and I love here. The music scene is just incredible!",
  photo_url: 'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583845557/user-imgs/Malvina_Ivanov_zc4bmq.jpg',
},
]
# all = Instrument.all
users.each do |user|
  photo_url = user[:photo_url]
  user.delete(:photo_url)
  usr = User.new(user)
  # p URI.open(photo_url)
  usr.photo.attach(io: URI.open(photo_url), filename: 'photo.jpg')
  usr.save!
end

=begin
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
=end

UserInstrument.create(
  user_id: 1,
  instrument_id: 11,
  level: %w(Beginner Intermediate Expert).sample,
  since: %w(2011 2012 2010 2014 2017 2018 2019 2015 2008 2016 2004 2006 2003 1999 2001).sample,
)
UserInstrument.create(
  user_id: 1,
  instrument_id: 14,
  level: %w(Beginner Intermediate Expert).sample,
  since: %w(2011 2012 2010 2014 2017 2018 2019 2015 2008 2016 2004 2006 2003 1999 2001).sample,
)
UserInstrument.create(
  user_id: 1,
  instrument_id: 4,
  level: %w(Beginner Intermediate Expert).sample,
  since: %w(2011 2012 2010 2014 2017 2018 2019 2015 2008 2016 2004 2006 2003 1999 2001).sample,
)

UserInstrument.create(
  user_id: 2,
  instrument_id: 9,
  level: %w(Beginner Intermediate Expert).sample,
  since: %w(2011 2012 2010 2014 2017 2018 2019 2015 2008 2016 2004 2006 2003 1999 2001).sample,
)
UserInstrument.create(
  user_id: 2,
  instrument_id: 20,
  level: %w(Beginner Intermediate Expert).sample,
  since: %w(2011 2012 2010 2014 2017 2018 2019 2015 2008 2016 2004 2006 2003 1999 2001).sample,
)
UserInstrument.create(
  user_id: 2,
  instrument_id: 11,
  level: %w(Beginner Intermediate Expert).sample,
  since: %w(2011 2012 2010 2014 2017 2018 2019 2015 2008 2016 2004 2006 2003 1999 2001).sample,
)

UserInstrument.create(
  user_id: 3,
  instrument_id: 17,
  level: %w(Beginner Intermediate Expert).sample,
  since: %w(2011 2012 2010 2014 2017 2018 2019 2015 2008 2016 2004 2006 2003 1999 2001).sample,
)
UserInstrument.create(
  user_id: 3,
  instrument_id: 14,
  level: %w(Beginner Intermediate Expert).sample,
  since: %w(2011 2012 2010 2014 2017 2018 2019 2015 2008 2016 2004 2006 2003 1999 2001).sample,
)

UserInstrument.create(
  user_id: 4,
  instrument_id: 19,
  level: %w(Beginner Intermediate Expert).sample,
  since: %w(2011 2012 2010 2014 2017 2018 2019 2015 2008 2016 2004 2006 2003 1999 2001).sample,
)
UserInstrument.create(
  user_id: 4,
  instrument_id: 1,
  level: %w(Beginner Intermediate Expert).sample,
  since: %w(2011 2012 2010 2014 2017 2018 2019 2015 2008 2016 2004 2006 2003 1999 2001).sample,
)
UserInstrument.create(
  user_id: 4,
  instrument_id: 9,
  level: %w(Beginner Intermediate Expert).sample,
  since: %w(2011 2012 2010 2014 2017 2018 2019 2015 2008 2016 2004 2006 2003 1999 2001).sample,
)

UserInstrument.create(
  user_id: 5,
  instrument_id: 14,
  level: %w(Beginner Intermediate Expert).sample,
  since: %w(2011 2012 2010 2014 2017 2018 2019 2015 2008 2016 2004 2006 2003 1999 2001).sample,
)
UserInstrument.create(
  user_id: 5,
  instrument_id: 29,
  level: %w(Beginner Intermediate Expert).sample,
  since: %w(2011 2012 2010 2014 2017 2018 2019 2015 2008 2016 2004 2006 2003 1999 2001).sample,
)

UserInstrument.create(
  user_id: 6,
  instrument_id: 14,
  level: %w(Beginner Intermediate Expert).sample,
  since: %w(2011 2012 2010 2014 2017 2018 2019 2015 2008 2016 2004 2006 2003 1999 2001).sample,
)
UserInstrument.create(
  user_id: 6,
  instrument_id: 16,
  level: %w(Beginner Intermediate Expert).sample,
  since: %w(2011 2012 2010 2014 2017 2018 2019 2015 2008 2016 2004 2006 2003 1999 2001).sample,
)
UserInstrument.create(
  user_id: 6,
  instrument_id: 29,
  level: %w(Beginner Intermediate Expert).sample,
  since: %w(2011 2012 2010 2014 2017 2018 2019 2015 2008 2016 2004 2006 2003 1999 2001).sample,
)

UserInstrument.create(
  user_id: 7,
  instrument_id: 29,
  level: %w(Beginner Intermediate Expert).sample,
  since: %w(2011 2012 2010 2014 2017 2018 2019 2015 2008 2016 2004 2006 2003 1999 2001).sample,
)
UserInstrument.create(
  user_id: 7,
  instrument_id: 28,
  level: %w(Beginner Intermediate Expert).sample,
  since: %w(2011 2012 2010 2014 2017 2018 2019 2015 2008 2016 2004 2006 2003 1999 2001).sample,
)

UserInstrument.create(
  user_id: 8,
  instrument_id: 2,
  level: %w(Beginner Intermediate Expert).sample,
  since: %w(2011 2012 2010 2014 2017 2018 2019 2015 2008 2016 2004 2006 2003 1999 2001).sample,
)
UserInstrument.create(
  user_id: 8,
  instrument_id: 11,
  level: %w(Beginner Intermediate Expert).sample,
  since: %w(2011 2012 2010 2014 2017 2018 2019 2015 2008 2016 2004 2006 2003 1999 2001).sample,
)
UserInstrument.create(
  user_id: 8,
  instrument_id: 14,
  level: %w(Beginner Intermediate Expert).sample,
  since: %w(2011 2012 2010 2014 2017 2018 2019 2015 2008 2016 2004 2006 2003 1999 2001).sample,
)

UserInstrument.create(
  user_id: 9,
  instrument_id: 29,
  level: %w(Beginner Intermediate Expert).sample,
  since: %w(2011 2012 2010 2014 2017 2018 2019 2015 2008 2016 2004 2006 2003 1999 2001).sample,
)
UserInstrument.create(
  user_id: 9,
  instrument_id: 11,
  level: %w(Beginner Intermediate Expert).sample,
  since: %w(2011 2012 2010 2014 2017 2018 2019 2015 2008 2016 2004 2006 2003 1999 2001).sample,
)

UserInstrument.create(
  user_id: 10,
  instrument_id: 2,
  level: %w(Beginner Intermediate Expert).sample,
  since: %w(2011 2012 2010 2014 2017 2018 2019 2015 2008 2016 2004 2006 2003 1999 2001).sample,
)

UserInstrument.create(
  user_id: 11,
  instrument_id: 10,
  level: %w(Beginner Intermediate Expert).sample,
  since: %w(2011 2012 2010 2014 2017 2018 2019 2015 2008 2016 2004 2006 2003 1999 2001).sample,
)
UserInstrument.create(
  user_id: 11,
  instrument_id: 16,
  level: %w(Beginner Intermediate Expert).sample,
  since: %w(2011 2012 2010 2014 2017 2018 2019 2015 2008 2016 2004 2006 2003 1999 2001).sample,
)
UserInstrument.create(
  user_id: 11,
  instrument_id: 26,
  level: %w(Beginner Intermediate Expert).sample,
  since: %w(2011 2012 2010 2014 2017 2018 2019 2015 2008 2016 2004 2006 2003 1999 2001).sample,
)

UserInstrument.create(
  user_id: 12,
  instrument_id: 17,
  level: %w(Beginner Intermediate Expert).sample,
  since: %w(2011 2012 2010 2014 2017 2018 2019 2015 2008 2016 2004 2006 2003 1999 2001).sample,
)
UserInstrument.create(
  user_id: 12,
  instrument_id: 27,
  level: %w(Beginner Intermediate Expert).sample,
  since: %w(2011 2012 2010 2014 2017 2018 2019 2015 2008 2016 2004 2006 2003 1999 2001).sample,
)
UserInstrument.create(
  user_id: 12,
  instrument_id: 29,
  level: %w(Beginner Intermediate Expert).sample,
  since: %w(2011 2012 2010 2014 2017 2018 2019 2015 2008 2016 2004 2006 2003 1999 2001).sample,
)

UserInstrument.create(
  user_id: 13,
  instrument_id: 2,
  level: %w(Beginner Intermediate Expert).sample,
  since: %w(2011 2012 2010 2014 2017 2018 2019 2015 2008 2016 2004 2006 2003 1999 2001).sample,
)
UserInstrument.create(
  user_id: 13,
  instrument_id: 8,
  level: %w(Beginner Intermediate Expert).sample,
  since: %w(2011 2012 2010 2014 2017 2018 2019 2015 2008 2016 2004 2006 2003 1999 2001).sample,
)

UserInstrument.create(
  user_id: 14,
  instrument_id: 10,
  level: %w(Beginner Intermediate Expert).sample,
  since: %w(2011 2012 2010 2014 2017 2018 2019 2015 2008 2016 2004 2006 2003 1999 2001).sample,
)
UserInstrument.create(
  user_id: 14,
  instrument_id: 17,
  level: %w(Beginner Intermediate Expert).sample,
  since: %w(2011 2012 2010 2014 2017 2018 2019 2015 2008 2016 2004 2006 2003 1999 2001).sample,
)
UserInstrument.create(
  user_id: 14,
  instrument_id: 6,
  level: %w(Beginner Intermediate Expert).sample,
  since: %w(2011 2012 2010 2014 2017 2018 2019 2015 2008 2016 2004 2006 2003 1999 2001).sample,
)

UserInstrument.create(
  user_id: 15,
  instrument_id: 28,
  level: %w(Beginner Intermediate Expert).sample,
  since: %w(2011 2012 2010 2014 2017 2018 2019 2015 2008 2016 2004 2006 2003 1999 2001).sample,
)
UserInstrument.create(
  user_id: 15,
  instrument_id: 5,
  level: %w(Beginner Intermediate Expert).sample,
  since: %w(2011 2012 2010 2014 2017 2018 2019 2015 2008 2016 2004 2006 2003 1999 2001).sample,
)

puts "-- Users are ready!"
