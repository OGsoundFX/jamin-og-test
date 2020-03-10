class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :user_instruments
  has_many :instruments, through: :user_instruments
  has_many :messages, dependent: :destroy
  has_one_attached :photo


  def profile_picture
    if photo.attached?
      photo.key
    else
      "avatar-unknown.png"
    end
  end

end
