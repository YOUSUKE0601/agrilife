class Public::TopicsController < ApplicationController

  def index
    @farmer = Farmer.find_by(id: params[:farmer_id])
    if @farmer.present?
      @topics = @farmer.topics.page(params[:page]).reverse_order
    else
      @topics = Topic.page(params[:page]).reverse_order
    end
  end

  def show
    @topic = Topic.find(params[:id])
    @topic_comment = TopicComment.new
  end

end
