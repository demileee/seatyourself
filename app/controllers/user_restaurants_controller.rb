class UserRestaurantsController < ApplicationController

  def index
    ensure_logged_in
    @restaurants = Restaurant.where("user_id = ?", params[:user_id]).order(:name)

    if current_user.id != params[:user_id].to_i
      flash[:alert] = 'Not authorized user'
      redirect_to root_url
    end
  end

end
