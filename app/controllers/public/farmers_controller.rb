class Public::FarmersController < ApplicationController

  def search
    @q = Farmer.ransack(params[:q])
    
    #受け取った値がnill、false以外だったら
    if params[:q]
      @farmers = @q.result.order(:farm_name)
    else
      @farmers = []
    end

  end

  def show
    @farmer = Farmer.find(params[:id])
    #ログインしているユーザーの情報を持ってくる
    #@currentEndUserRoom = Room.where(end_user_id: current_end_user.id)
    @room = Room.where(end_user_id: current_end_user.id, farmer_id: @farmer.id)
    #@farmerRoom = Room.where(farmer_id: @farmer.id)
    #@currentEndUserRoom.each do |ceu|
      #@farmerRoom.each do |fr|
        if @room.present?
          @isRoom = true
        end
    if !@isRoom 
      @room = Room.new
    end
  end

end

# 1.end_userがフォローしたら、farmerのshowページで「チャットへ」というボタンをおすことができる
# 2.押したと同時にroomがcreateされる
# 3.roomsのshowページに移る
# 4.roomのshowページでchatがcreateされる