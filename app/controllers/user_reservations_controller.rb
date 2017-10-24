class UserReservationsController < ApplicationController

include ApplicationHelper

  def index
    @user = User.find(params[:user_id])
    @reservations = @user.reservations.all
  end

end
