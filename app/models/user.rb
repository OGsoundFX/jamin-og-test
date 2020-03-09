class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :user_instruments
  has_many :instruments, through: :user_instruments
  has_many :messages, dependent: :destroy
  has_one_attached :photo

  # has_many :jam_sessions
  # has_many :participations
  # has_many :reviews
end
