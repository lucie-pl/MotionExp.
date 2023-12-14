class Friendship < ApplicationRecord
  belongs_to :first_user, class_name: "User"
  belongs_to :second_user, class_name: "User"
  has_many :messages
  validates :first_user, uniqueness: { scope: :second_user }
  scope :for_user, ->(id) { where(first_user_id: id).or(Friendship.where(second_user_id: id)) }
end
