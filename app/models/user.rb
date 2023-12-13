class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :notifications
  has_many :save_items
  has_many :reviews, through: :save_items
  has_many :messages, dependent: :destroy
  # has_many :friendships, foreign_key: :first_user, class_name: "Friendship"
  # has_many :friendships, foreign_key: :second_user, class_name: "Friendship"
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, presence: true
  validates :username, presence: true, uniqueness: true, length: { minimum: 4 }
  validates :username, length: { maximum: 20 }
end
