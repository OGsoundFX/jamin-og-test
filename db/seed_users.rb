require 'open-uri'

#GENERATE USERS

puts '-- Deleting all users'
User.destroy_all
UserInstrument.destroy_all


puts "-- Generating users"

users = [
  {
    email: "bob@gmail.com",
    password: 123456,
    first_name: "Bob",
    last_name: "Sponge",
    bio: "I live in the sea",
    photo_url: 'https://images.unsplash.com/photo-1522536421511-14c9073df899?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
  },
  {
    email: "oliv@gmail.com",
    password: 123456,
    first_name: "Olivier",
    last_name: "Girardot",
    bio: "I believe I can fly",
    photo_url: 'https://cdn-soundlister.pressidium.com/wp-content/uploads/formidable/6/Photo-2017-300x300.jpeg',
  },
  {
    email: "miguel@lopez.com",
    password: 123456,
    first_name: "Miguel",
    last_name: "Lopez",
    bio: "Let's get together and experiment. I love to broaden my horizons",
    photo_url: 'https://images.unsplash.com/photo-1529518969858-8baa65152fc8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
  },
  {
    email: "maria@mueller.com",
    password: 123456,
    first_name: "Maria",
    last_name: "Mueller",
    bio: "I really enjoy classical and rock music! Contradicting I know, but life is full of surprices!",
    photo_url: 'https://images.unsplash.com/photo-1563379055946-c5dbcd7bd610?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
  },
  {
    email: "lara@lara.com",
    password: 123456,
    first_name: "Lara",
    last_name: "Croft",
    bio: "Recently moved here and looking to expand my network by jamming with other musicians. Singing is my passion!",
    photo_url: 'https://images.unsplash.com/photo-1455503521443-c39d5b861bc4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
  },
  {
    email: "amy@weinhaus.com",
    password: 123456,
    first_name: "Amy",
    last_name: "Weinhaus",
    bio: "I love to sing, not only in the shower! I also like to play the guitar!",
    photo_url: 'https://images.unsplash.com/photo-1558499737-ff02d688f9da?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
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
  p user.email

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

