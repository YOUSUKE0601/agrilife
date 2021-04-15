class Public::FarmersController < ApplicationController

  def serch 
    @q = Farmer.ransack(params[:q])
    @farmers = @q.result.order(:farm_name)
  end
  
  def show
  end

end
