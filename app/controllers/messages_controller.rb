class MessagesController < ApplicationController
  def create
    Message.create!(text: params[:text], user: @user, room_id: params[:room_id])
  end

  private

  def permitted_params
    params.require(:message).permit(:text, :room_id)
  end
end
