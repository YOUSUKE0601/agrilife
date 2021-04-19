class Public::RelationshipsController < ApplicationController
  
  def create
    farmer = Farmer.find(params[:farmer_id])
    relationship = current_end_user.relationships.new(farmer_id: farmer.id)
    relationship.save
    redirect_to public_farmer_path(farmer)
  end
  
  def destroy
    farmer = Farmer.find(params[:farmer_id])
    relationship = current_end_user.relationships.find_by(farmer_id: farmer.id)
    relationship.destroy
    redirect_to public_farmer_path(farmer)
  end
  
end
