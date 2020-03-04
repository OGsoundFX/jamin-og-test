class JamSession < ApplicationRecord
  belongs_to :user
  has_many :spots
  has_many :instruments, through: :spots
  validates :title, presence: true, length: { minimum: 3, maximum: 15 }
  validates :description, presence: true, length: { minimum: 10, maximum: 45 }
  validates :genre, presence: true, length: { minimum: 3, maximum: 15 }
  validates :starts_at, presence: true
  validates :ends_at, presence: true
end
