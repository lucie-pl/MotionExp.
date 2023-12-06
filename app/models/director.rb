class Director < ApplicationRecord
  has_many :movie_directors
  has_many :movies, through: :movie_directors

    # to be seen later if we need validations
end
