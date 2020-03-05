class JamSession < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_by_location,
                  against: [:location],
                  using: {
                    tsearch: { prefix: true }, # <-- now `superman batm` will return something!
                  }
  belongs_to :user
  has_many :spots
  has_many :instruments, through: :spots
  validates :title, presence: true, length: { minimum: 3 }
  validates :description, presence: true, length: { minimum: 10, maximum: 100 }
  validates :genre, presence: true, length: { minimum: 3, maximum: 15 }
  validates :starts_at, presence: true
  validates :ends_at, presence: true
  validates :location, presence: true
  geocoded_by :location
  has_many :spots
  has_many :instruments, through: :spots
end
