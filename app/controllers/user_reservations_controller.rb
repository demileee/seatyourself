class UserReservationsController < ApplicationController

include ApplicationHelper

  def index
    @user = User.find(params[:user_id])
    ensure_logged_in
    if current_user.id != @user.id
      flash[:alert] = 'Not authorized user'
      redirect_to root_url
    end
    @reservations = @user.reservations.all
  end

end
