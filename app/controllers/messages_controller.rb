class MessagesController < ApplicationController
  def create
    @friendship = Friendship.find(params[:friendship_id])
    @message = Message.new(message_params)
    raise
    # @message.friendship = @friendship.second_user
    @message.user = current_user
    if @message.save
      redirect_to friendship_path(@friendship)
    else
      render "friendships/show", status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
