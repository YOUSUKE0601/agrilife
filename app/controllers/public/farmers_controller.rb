class Public::FarmersController < ApplicationController
  before_action :authenticate_end_user!
  
  
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
    @room = current_end_user.with_farmer_room(@farmer)
  end

end

# 1.end_userがフォローしたら、farmerのshowページで「チャットへ」というボタンをおすことができる
# 2.押したと同時にroomがcreateされる
# 3.roomsのshowページに移る
# 4.roomのshowページでchatがcreateされる