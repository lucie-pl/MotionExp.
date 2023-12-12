class FriendshipsController < ApplicationController
  def show
    # @friendship = Friendship.find(params[:id])
    @message = Message.new
  end
end
