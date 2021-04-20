class Public::RoomsController < ApplicationController

  def create
    @room = Room.create(room_params)
    redirect_to public_farmer_room_path(@room.farmer.id, @room)
  end

  def show
    @room = Room.find(params[:id])
    if Room.where(end_user_id: current_end_user.id, id: @room.id ).present?
      @chats = @room.chats
      @chat = Chat.new
    else
      redirect_back(fallback_location: root_path)
    end
  end

  private

  def room_params
    params.require(:room).permit(:farmer_id, :end_user_id)
  end

end
