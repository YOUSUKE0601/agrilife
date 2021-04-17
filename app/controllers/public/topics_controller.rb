class Public::TopicsController < ApplicationController
  
  def index
    @farmer = Farmer.find_by(id: params[:farmer_id])
    if @farmer.present?
      @topics = @farmer.topics
    else
      @topics = Topic.all
    end
  end
  
  def show
    @topic = Topic.find(params[:id])
  end

end
