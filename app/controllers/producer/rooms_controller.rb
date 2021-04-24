class Producer::RoomsController < ApplicationController
  before_action :authenticate_farmer!
  
  def create
    @room = Room.create(room_params)
    redirect_to producer_end_user_room_path(@room.farmer.id, @room)
  end
  
  def show
    @room = Room.find(params[:id])
    if Room.where(farmer_id: current_farmer.id, id: @room.id).present?
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
