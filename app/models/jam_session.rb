class JamSession < ApplicationRecord
  include PgSearch::Model

  belongs_to :user
  has_many :spots, dependent: :destroy
  has_many :instruments, through: :spots
  has_many :participations, through: :spots
  has_many :messages, dependent: :destroy
  has_many :participants, through: :participations, source: :user

  validates :title, presence: true, length: { minimum: 3 }
  validates :description, presence: true, length: { minimum: 10, maximum: 100 }
  validates :genre, presence: true, length: { minimum: 3, maximum: 15 }
  validates :starts_at, presence: true
  validates :ends_at, presence: true
  validates :location, presence: true
  validate :end_after_start

  geocoded_by :location

  after_validation :geocode, if: :will_save_change_to_location?

  pg_search_scope :search_by_location,
                  against: [:location],
                  using: {
                    tsearch: { prefix: true }, # <-- now `superman batm` will return something!
                  }

  # https://stackoverflow.com/questions/19168490/rails-how-to-find-with-no-associated-records
  def available_spots
    spots.includes(:participation).where(participations: { spot: nil })
  end


  def user_in_jam_session?(user)
    participants.include?(user)
  end

  private

  def end_after_start
    if ends_at.strftime("%H:%M").to_i < starts_at.strftime("%H:%M").to_i
      errors.add(:ends_at, "must be after the starting time")
    end
   end
end
