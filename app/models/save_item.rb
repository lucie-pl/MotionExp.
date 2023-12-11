class SaveItem < ApplicationRecord
  belongs_to :user
  has_many :notifications
  belongs_to :movie, foreign_key: "api_movie_id"

  validates :api_movie_id, uniqueness: { scope: :user_id }
  validates :title, presence: true
  validates :poster, presence: true
  validates :year, presence: true

  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }
end
