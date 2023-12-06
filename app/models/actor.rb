class Actor < ApplicationRecord
  has_many :movie_actors
  has_many :movies, through: :movie_actors

  # to be seen later if we need validations
end
