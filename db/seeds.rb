# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# PROPERTIES
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

# CREATING PROPERTIES WITH ATTRIBUTES
instruments.each_with_index do |instrument, index|
  puts "-- Generating #{instrument[:name]}\n"
  inst = Instrument.new(instrument)
  inst.save!
end

puts "-- Instruments are ready!"
