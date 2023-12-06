class MovieDirector < ApplicationRecord
  belongs_to :movie
  belongs_to :director

  # to be seen later if we need validations
end
