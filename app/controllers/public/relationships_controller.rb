class Public::RelationshipsController < ApplicationController
  
  def create
    @farmer = Farmer.find(params[:farmer_id])
    @relationship = current_end_user.relationships.new(farmer_id: @farmer.id)
    @relationship.save
  end
  
  def destroy
    @farmer = Farmer.find(params[:farmer_id])
    @relationship = current_end_user.relationships.find_by(farmer_id: @farmer.id)
    @relationship.destroy
  end
  
end
