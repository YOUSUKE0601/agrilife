class Producer::TopicsController < ApplicationController
   before_action :authenticate_farmer!

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)
    @topic.farmer_id = current_farmer.id
    if @topic.save
      tags = Vision.get_image_data(@topic.topic_image)
      tags.each do |tag|
        @topic.tags.create(name: tag)
      end

      redirect_to producer_farmer_topics_path(current_farmer)
    else
      render :new
    end
  end

  def index
    @farmer = Farmer.find_by(id: params[:farmer_id])
    @topics = @farmer.topics.includes(:tags).page(params[:page]).reverse_order
  end

  def show
    @topic = Topic.find(params[:id])
  end

  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy
    redirect_to my_page_producer_farmers_path
  end



  private

  def topic_params
    params.require(:topic).permit(:topic_image, :title, :body)
  end

end
