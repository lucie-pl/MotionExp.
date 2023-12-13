class FriendshipsController < ApplicationController
  def index
    @friendships = Friendship.for_user(current_user.id)
  end

  def show
    @friendship = Friendship.find(params[:id])
    @message = Message.new
  end
end
