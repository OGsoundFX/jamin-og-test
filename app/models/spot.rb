class Spot < ApplicationRecord
  belongs_to :jam_session
  belongs_to :instrument
  has_one :participation
end
