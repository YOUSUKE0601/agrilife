class Public::FavoritesController < ApplicationController
  
  def create
    topic = Topic.find(params[:topic_id])
    favorite = current_end_user.favorites.new(topic_id: topic.id)
    favorite.save
    redirect_to public_topic_path(topic)
  end
  
  def destroy
    topic = Topic.find(params[:topic_id])
    favorite = current_end_user.favorites.find_by(topic_id: topic.id)
    favorite.destroy
    redirect_to public_topic_path(topic)
  end
  
  
end
