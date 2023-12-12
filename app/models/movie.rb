class Movie < ApplicationRecord
  has_many :save_items, foreign_key: "api_movie_id"
  has_many :screening_times
  has_many :cinemas, through: :screening_times
end
