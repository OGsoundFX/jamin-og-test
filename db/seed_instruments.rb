#INSTRUMENTS (array of hashes)

puts 'Deleting all instruments'
Instrument.destroy_all


icons = [
  'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583325859/icons-instrument/noun_accordion_172493_pwtlmo.png',
  'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583325859/icons-instrument/noun_bass_2122617_gblb9e.png',
  'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583325859/icons-instrument/noun_bass_2122617_gblb9e.png',
  'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583325859/icons-instrument/noun_bongos_1602012_ga8hat.png',
  'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583325859/icons-instrument/noun_Cello_415863_sc5bbx.png',
  'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583325859/icons-instrument/noun_Clarinet_3021845_scsjap.png',
  'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583330820/icons-instrument/noun_double_bass_1601948_qpzg9h.png',
  'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583325859/icons-instrument/noun_Drum_1181834_kcnk6r.png',
  'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583325859/icons-instrument/noun_Flute_1928130_p4nlip.png',
  'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583325859/icons-instrument/noun_Guitar_152262_vartmq.png',
  'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583325859/icons-instrument/noun_Guitar_152262_vartmq.png',
  'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583325859/icons-instrument/noun_Harmonica_2895838_etu9m0.png',
  'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583325860/icons-instrument/noun_oboe_737111_ecyoqe.png',
  'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583325859/icons-instrument/noun_Piano_1704743_fojzgg.png',
  'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583325859/icons-instrument/noun_Piano_1704743_fojzgg.png',
  'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583325860/icons-instrument/noun_Conga_3035793_ot7mma.png',
  'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583325860/icons-instrument/noun_Djembe_1373758_cop9sw.png',
  'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583325860/icons-instrument/noun_Conga_3035793_ot7mma.png',
  'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583325859/icons-instrument/noun_Saxophone_1627835_mu9wwk.png',
  'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583325859/icons-instrument/noun_Saxophone_1627835_mu9wwk.png',
  'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583325859/icons-instrument/noun_bongos_1602012_ga8hat.png',
  'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583325859/icons-instrument/noun_Piano_1704743_fojzgg.png',
  'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583331348/icons-instrument/noun_Trumpet_1595190_squdec.png',
  'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583325859/icons-instrument/noun_ukulele_644053_gs8iyj.png',
  'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583325859/icons-instrument/noun_Violin_2387794_eusxo3.png',
]




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

instruments.each do |instrument, index|
  inst = Instrument.new(instrument)
  usr.photo.attach(io: URI.open(icons[index]), filename: 'icon.png')
  inst.save!
end

puts "-- Instruments are ready!"
