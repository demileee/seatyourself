class ReservationsController < ApplicationController

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new

    @reservation.name = params[:reservation][:name]
    @reservation.email = params[:reservation][:email]
    @reservation.notes = params[:reservation][:notes]
    @reservation.restaurant_id = params[:restaurant_id]
    @reservation.date_time = params[:date]

  end

end
