require 'open-uri'

#INSTRUMENTS (array of hashes)

puts '-- Deleting all instruments'
# Instrument.destroy_all

instruments = [
  {
    name: 'Accordion',
    description: '',
    icon_url: 'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583325859/icons-instrument/noun_accordion_172493_pwtlmo.png',
  },
  {
    name: 'Bass guitar',
    description: 'Electric',
    icon_url: 'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583325859/icons-instrument/noun_bass_2122617_gblb9e.png',
  },
  {
    name: 'Accoustic Bass guitar',
    description: 'Accoustic',
    icon_url: 'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583325859/icons-instrument/noun_bass_2122617_gblb9e.png',
  },
  {
    name: 'Bongo',
    description: '',
    icon_url: 'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583325859/icons-instrument/noun_bongos_1602012_ga8hat.png',
  },
  {
    name: 'Cello',
    description: '',
    icon_url: 'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583325859/icons-instrument/noun_Cello_415863_sc5bbx.png',
  },
  {
    name: 'Clarinet',
    description: '',
    icon_url: 'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583325859/icons-instrument/noun_Clarinet_3021845_scsjap.png',
  },
  {
    name: 'Didgeridoo',
    description: '',
    icon_url: 'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583325859/icons-instrument/noun_Didgeridoo_3023392_is5opi.png',
  },
  {
    name: 'Double bass',
    description: '',
    icon_url: 'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583330820/icons-instrument/noun_double_bass_1601948_qpzg9h.png',
  },
  {
    name: 'Drums',
    description: '',
    icon_url: 'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583325859/icons-instrument/noun_Drum_1181834_kcnk6r.png',
  },
  {
    name: 'Flute',
    description: '',
    icon_url: 'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583325859/icons-instrument/noun_Flute_1928130_p4nlip.png',
  },
  {
    name: 'Electric Guitar',
    description: 'Electric',
    icon_url: 'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583325859/icons-instrument/noun_Guitar_152262_vartmq.png',
  },
  {
    name: 'Electric Guitar1',
    description: 'Electric',
    icon_url: 'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583325859/icons-instrument/noun_Guitar_152262_vartmq.png',
  },
  {
    name: 'Electric Guitar2',
    description: 'Electric',
    icon_url: 'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583325859/icons-instrument/noun_Guitar_152262_vartmq.png',
  },
  {
    name: 'Accoustic Guitar',
    description: 'Accoustic',
    icon_url: 'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583325859/icons-instrument/noun_Guitar_152262_vartmq.png',
  },
  {
    name: 'Harmonica',
    description: '',
    icon_url: 'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583325859/icons-instrument/noun_Harmonica_2895838_etu9m0.png',
  },
  {
    name: 'Oboe',
    description: '',
    icon_url: 'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583325860/icons-instrument/noun_oboe_737111_ecyoqe.png',
  },
  {
    name: 'Piano',
    description: 'Accoustic',
    icon_url: 'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583336748/icons-instrument/noun_music_instrument_2257463_us4jqr.png',
  },
  {
    name: 'Electric Piano',
    description: 'Electric',
    icon_url: 'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583336748/icons-instrument/noun_music_instrument_2257463_us4jqr.png'
  },
  {
    name: 'Congas',
    description: 'Congas',
    icon_url: 'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583325860/icons-instrument/noun_Conga_3035793_ot7mma.png',
  },
  {
    name: 'Djembe',
    description: 'Djembe',
    icon_url: 'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583325860/icons-instrument/noun_Djembe_1373758_cop9sw.png',
  },
  {
    name: 'Percussion',
    description: 'Other',
    icon_url: 'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583325860/icons-instrument/noun_Conga_3035793_ot7mma.png',
  },
  {
    name: 'Saxophone Alto',
    description: 'Alto',
    icon_url: 'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583325859/icons-instrument/noun_Saxophone_1627835_mu9wwk.png',
  },
  {
    name: 'Saxophone Soprano',
    description: 'Soprano',
    icon_url: 'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583325859/icons-instrument/noun_Saxophone_1627835_mu9wwk.png',
  },
  {
    name: 'Steeldrum',
    description: '',
    icon_url: 'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583325859/icons-instrument/noun_bongos_1602012_ga8hat.png',
  },
  {
    name: 'Synthesizer',
    description: '',
    icon_url: 'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583336748/icons-instrument/noun_music_instrument_2257463_us4jqr.png'
  },
  {
    name: 'Trumpet',
    description: '',
    icon_url: 'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583331348/icons-instrument/noun_Trumpet_1595190_squdec.png',
  },
  {
    name: 'Ukulele',
    description: '',
    icon_url: 'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583325859/icons-instrument/noun_ukulele_644053_gs8iyj.png',
  },
  {
    name: 'Violin',
    description: '',
    icon_url: 'https://res.cloudinary.com/dqbzzl00v/image/upload/v1583325859/icons-instrument/noun_Violin_2387794_eusxo3.png',
  },
]


puts "-- Generating instruments"

instruments.each do |instrument|
  icon_url = instrument[:icon_url]
  instrument.delete(:icon_url)
  inst = Instrument.new(instrument)
  inst.photo.attach(io: URI.open(icon_url), filename: 'icon.png', content_type: "image/png")
  inst.save!
end

puts "-- Instruments are ready!"
