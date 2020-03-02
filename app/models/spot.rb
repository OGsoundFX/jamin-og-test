class Spot < ApplicationRecord
  belongs_to :jam_session
  belongs_to :instrument
end
