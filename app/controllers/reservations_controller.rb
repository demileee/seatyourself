class ReservationsController < ApplicationController

  include ApplicationHelper

  def index
    @restaurants = Restaurant.where("id = ?", params[:restaurant_id])
  end

  def new
    @reservation = Reservation.new
  end

  def create

    @reservation = Reservation.new

    @reservation.name = params[:reservation][:name]
    @reservation.email = params[:reservation][:email]
    @reservation.notes = params[:reservation][:notes]
    if current_user
      @reservation.user_id = current_user.id
    end

    @reservation.restaurant_id = params[:restaurant_id]
    @reservation.date_time = datetime(params[:reservation][:date], params[:reservation]["time(4i)"], params[:reservation][":time(5i)"])

    if @reservation.save
      flash[:success] = 'Reservation created'
      redirect_to "/restaurants/#{@reservation.restaurant_id}"
    else
      flash[:alert] = 'Please verify the information'
      redirect_to "/restaurants/#{@reservation.restaurant_id}"
    end
  end

end
