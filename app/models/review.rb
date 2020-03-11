class Review < ApplicationRecord
  belongs_to :writer, class_name: "User"
  belongs_to :receiver, class_name: "User"

  validates :rating, inclusion: { in: (1..5) }
  validates :content, length: { minimum: 5 }
end
