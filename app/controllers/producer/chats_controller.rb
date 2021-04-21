class Producer::ChatsController < ApplicationController
  
  def create
    if Room.where(end_user_id: params[:end_user_id]).present?
      @chat = Chat.create(chat_params)
    else
      flash[:alert] = "メッセージ送信に失敗しました。"
    end
    redirect_to producer_end_user_room_path(@chat.room.end_user_id, @chat.room_id)
  end
    
  private
  
  def chat_params
    params.require(:chat).permit(:end_user_id, :message, :room_id).merge(farmer_id: current_farmer.id)
  end

end
