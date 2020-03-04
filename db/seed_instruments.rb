#INSTRUMENTS (array of hashes)

puts 'Deleting all instruments'
Instrument.destroy_all

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
