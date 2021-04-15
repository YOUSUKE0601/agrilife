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
  
  def show
    @topic = Topic.find(params[:id])
  end
  
  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy
    redirect_to producer_topics_path
  end
    
    
  
  private
  
  def topic_params
    params.require(:topic).permit(:topic_image, :title, :body)
  end

end
