class Cinema < ApplicationRecord
  has_many :screening_times
  has_many :movies, through: :screening_times
end
