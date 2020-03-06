class UserInstrument < ApplicationRecord
  belongs_to :instrument
  belongs_to :user
  validates :level, presence: true, inclusion: { in: %w(Beginner Intermediate Expert) }
  validates :since, presence: true
end
