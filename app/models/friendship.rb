class Friendship < ApplicationRecord
  belongs_to :first_user
  belongs_to :second_user
  has_many :messages
end
