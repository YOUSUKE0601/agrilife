class Public::EndUsersController < ApplicationController
  before_action :authenticate_end_user!
  
  def my_page
    @end_user = current_end_user
  end

  def edit
    @end_user = current_end_user
  end

  def update
    @end_user = current_end_user
    @end_user.update(end_user_params)
    redirect_to my_page_public_end_users_path
  end

  def unsubscribe
    @end_user = current_end_user
  end

  def destroy
    @end_user = current_end_user
    @end_user.destroy
    redirect_to root_path
  end

  def favorites
    @end_user = EndUser.find(params[:id])
    #pluckでテーブルからカラムを取得
    @topics = Topic.where(id: Favorite.where(end_user_id: @end_user.id).pluck(:topic_id)).page(params[:page]).reverse_order
  end

  def following
    @end_user = EndUser.find(params[:id])
    @farmers = Farmer.where(id: Relationship.where(end_user_id: @end_user.id).pluck(:farmer_id)).page(params[:page]).reverse_order
  end
  
  def chater
    @end_user = EndUser.find(params[:id])
    @farmers = Farmer.where(id: Room.where(end_user_id: @end_user.id).pluck(:farmer_id))
    @chats = Chat.where(end_user_id: current_end_user.id)
  end



  private

  def end_user_params
    params.require(:end_user).permit(:name, :email)
  end

end
