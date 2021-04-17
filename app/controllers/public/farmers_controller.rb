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
  end

end
