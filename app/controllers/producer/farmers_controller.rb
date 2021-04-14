class Producer::FarmersController < ApplicationController
  
  def my_page
    @farmer = current_farmer
  end

end
