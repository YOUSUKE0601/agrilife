class Producer::FarmersController < ApplicationController
  
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
  end
  
  private
  
  def farmer_params
    params.require(:farmer).permit(:name, :email, :category, :farm_name, :profile_image_id, :farm_image_id, :region, :postcode, :telephone_number, :introduction, :prefecture, :address)
  end
end
