class Producer::FarmersController < ApplicationController
  
   before_action :authenticate_farmer!
  
  def my_page
    @farmer = current_farmer
  end
  
  def edit
    @farmer = current_farmer
  end
  
  def update
    @farmer = current_farmer
    @farmer.update(farmer_params)
    redirect_to my_page_producer_farmers_path
  end
  
  def unsubscribe
    @farmer = current_farmer
  end
  
  def destroy
    @farmer = current_farmer
    @farmer.destroy
    redirect_to root_path
  end
  
  def follower
    @farmer = Farmer.find(params[:id])
    @end_users = EndUser.where(id: Relationship.where(farmer_id: @farmer.id).pluck(:end_user_id))
    #@room = Room.where(end_user_id: @end_users.ids, farmer_id: @farmer.id)
    #@farmerRoom = Room.where(farmer_id: @farmer.id)
    #@EndUserRoom.each do |eur|
     # @farmerRoom.each do |fr|
        #if @room.present?
          #@isRoom = true
          #@room = @EndUserRoom
       # end
    
    #if !@isRoom
      #@room = Room.new
  #end
  end
  
  private
  
  def farmer_params
    params.require(:farmer).permit(:name, :email, :category, :farm_name, :profile_image_id, :farm_image_id, :region, :postcode, :telephone_number, :introduction, :prefecture, :address)
  end

end
