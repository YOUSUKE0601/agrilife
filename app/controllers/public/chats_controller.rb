class Public::ChatsController < ApplicationController
  before_action :authenticate_end_user!

  def create
    if Room.where(farmer_id: params[:farmer_id]).present?
      @chat = Chat.create(chat_params)
    else
      flash[:alert] = "メッセージ送信に失敗しました。"
    end
    redirect_to  public_farmer_room_path(@chat.room.farmer_id, @chat.room_id)
  end

  private

  def chat_params
    params.require(:chat).permit(:farmer_id, :message, :room_id).merge(end_user_id: current_end_user.id)
  end

end
