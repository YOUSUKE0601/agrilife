class Producer::TopicsController < ApplicationController
  
  def new
    @topic = Topic.new
  end
  
  def create
    @topic = Topic.new(topic_params)
    @topic.farmer_id = current_farmer.id 
    @topic.save
    redirect_to my_page_producer_farmers_path
  end
  
  def index
    @topics = Topic.all
  end
  
  
  private
  
  def topic_params
    params.require(:topic).permit(:topic_image_id, :title, :body)
  end

end
