class Public::TopicsController < ApplicationController
   before_action :authenticate_end_user!

  def index
    @farmer = Farmer.find_by(id: params[:farmer_id])
    if @farmer.present?
      @topics = @farmer.topics.includes(:tags).page(params[:page]).reverse_order
    else
      @topics = Topic.includes(:farmer, :tags).page(params[:page]).reverse_order
    end
  end

  def show
    @topic = Topic.find(params[:id])
    @topic_comment = TopicComment.new
  end

end
