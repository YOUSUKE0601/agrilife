class Public::EndUsersController < ApplicationController

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



  private

  def end_user_params
    params.require(:end_user).permit(:name, :email)
  end

end
