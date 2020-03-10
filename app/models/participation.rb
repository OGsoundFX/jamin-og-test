class Participation < ApplicationRecord
  belongs_to :spot
  belongs_to :user
  has_one :jam_session, through: :spot

  validate :user_already_in_jam_session


  private

  def user_already_in_jam_session
    if jam_session.participants.include?(user)
      errors.add(:user, "Already joined this Jam session")
    end
  end
end
