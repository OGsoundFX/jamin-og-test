class Instrument < ApplicationRecord
  has_many :spots
  has_many :user_instruments
end
