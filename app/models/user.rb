class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :user_instruments
  has_many :instruments, through: :user_instruments
  has_many :messages, dependent: :destroy
  has_one_attached :photo
  has_many :reviews_written, class_name: "Review", foreign_key: :writer_id
  has_many :reviews_received, class_name: "Review", foreign_key: :receiver_id

  def profile_picture
    if photo.attached?
      photo.key
    else
      "avatar-unknown.png"
    end
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
