class RoomsController < ApplicationController
  def index
    redirect_to "/login" unless @user.present?

    @rooms = Room.all
  end

  def show
    redirect_to "/login" unless @user.present?

    @room = Room.find(params[:id])
    @messages = @room.messages.includes(:user)
  end

  def create
    @room = Room.new(permitted_params)
    if @room.save!
      # some alert
    else
      # Proper error handling
    end
  end

  private

  def permitted_params
    params.permit(:name)
  end
end
