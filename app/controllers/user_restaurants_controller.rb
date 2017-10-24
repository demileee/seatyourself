class UserRestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.where("user_id = ?", params[:user_id])
  end

end
