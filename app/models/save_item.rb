class SaveItem < ApplicationRecord
  belongs_to :user
  has_many :notifications

  validates :api_movie_id, presence: true, uniqueness: true
  validates :title, presence: true
  validates :poster, presence: true
  validates :year, presence: true

  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }
end
