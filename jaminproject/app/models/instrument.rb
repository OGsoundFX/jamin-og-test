class Instrument < ApplicationRecord
  has_many :spots
  has_many :jam_sessions, through: :spots
  has_many :user_instruments
  has_one_attached :photo


  include PgSearch::Model

  pg_search_scope :search_by_inst_name,
                  against: [:name],
                  using: {
                    tsearch: { prefix: true }, # <-- now `superman batm` will return something!
                  }
end
