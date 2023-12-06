class MovieActor < ApplicationRecord
  belongs_to :movie
  belongs_to :actor

    # to be seen later if we need validations
end
