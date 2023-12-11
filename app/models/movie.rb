class Movie < ApplicationRecord
  has_many :movie_actors
  has_many :movie_directors
  has_many :actors, through: :movie_actors
  has_many :directors, through: :movie_directors
  has_many :save_items, foreign_key: "api_movie_id"
  has_many :screening_times
  has_many :cinemas, through: :movies
end
