class FriendshipsController < ApplicationController
  def show
    @friendships = Friendship.find(params[:id])
    @message = Message.new
  end
end
