class Public::EndUsersController < ApplicationController
  
  def my_page
    @end_user = current_end_user
  end
  
  def edit
    @end_user = current_end_user
  end
  
  
end
