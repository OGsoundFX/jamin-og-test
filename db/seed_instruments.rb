require 'open-uri'

#INSTRUMENTS (array of hashes)

puts '-- Deleting all instruments'
# Instrument.destroy_all

instruments = [
  {
    name: 'Accordion',
    description: '',
    icon: 'accordion.png',
  },
  {
    name: 'Bass guitar',
    description: 'Electric',
    icon: 'bass.png',
  },
  {
    name: 'Accoustic Bass guitar',
    description: 'Accoustic',
    icon: 'guitar.png',
  },
  {
    name: 'Bongo',
    description: '',
    icon: 'bongo.png',
  },
  {
    name: 'Cello',
    description: '',
    icon: 'cello.png',
  },
  {
    name: 'Clarinet',
    description: '',
    icon: 'clarinet.png',
  },
  {
    name: 'Didgeridoo',
    description: '',
    icon: 'didgeridoo.png',
  },
  {
    name: 'Double bass',
    description: '',
    icon: 'double-bass.png',
  },
  {
    name: 'Drums',
    description: '',
    icon: 'drums.png',
  },
  {
    name: 'Flute',
    description: '',
    icon: 'flute.png',
  },
  {
    name: 'Fender Guitar',
    description: 'Electric',
    icon: 'electric-guitar.png',
  },
  {
    name: 'Ibanez Guitar',
    description: 'Electric',
    icon: 'electric-guitar.png',
  },
  {
    name: 'Electric Guitar',
    description: 'Electric',
    icon: 'electric-guitar.png',
  },
  {
    name: 'Accoustic Guitar',
    description: 'Accoustic',
    icon: 'acoustic-guitar.png',
  },
  {
    name: 'Harmonica',
    description: '',
    icon: 'harmonica.png',
  },
  {
    name: 'Oboe',
    description: '',
    icon: 'oboe.png',
  },
  {
    name: 'Piano',
    description: 'Accoustic',
    icon: 'piano.png',
  },
  {
    name: 'Electric Piano',
    description: 'Electric',
    icon: 'piano.png'
  },
  {
    name: 'Congas',
    description: 'Congas',
    icon: 'congas.png',
  },
  {
    name: 'Djembe',
    description: 'Djembe',
    icon: 'djembe.png',
  },
  {
    name: 'Percussion',
    description: 'Other',
    icon: 'drums.png',
  },
  {
    name: 'Saxophone Alto',
    description: 'Alto',
    icon: 'saxophone.png',
  },
  {
    name: 'Saxophone Soprano',
    description: 'Soprano',
    icon: 'saxophone.png',
  },
  {
    name: 'Steeldrum',
    description: '',
    icon: 'drums.png',
  },
  {
    name: 'Synthesizer',
    description: '',
    icon: 'piano.png'
  },
  {
    name: 'Trumpet',
    description: '',
    icon: 'trumpet.png',
  },
  {
    name: 'Ukulele',
    description: '',
    icon: 'ukulele.png',
  },
  {
    name: 'Violin',
    description: '',
    icon: 'violin.png',
  },
  {
    name: 'Vocals',
    description: '',
    icon: 'microphone.png',
  },
]


puts "-- Generating instruments"

instruments.each do |instrument|
  inst = Instrument.new(instrument)
  inst.save!
end

puts "-- Instruments are ready!"
