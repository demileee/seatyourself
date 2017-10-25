class UserReservationsController < ApplicationController

include ApplicationHelper

  def index
    @user = User.find(params[:user_id])
    @reservations = @user.reservations.all
  end

  def edit
    @user = User.find(params[:user_id])
    @reservation = @user.reservations.find(params[:id])

  end

  def update
    @user = User.find(params[:user_id])
    @reservation = @user.reservations.find(params[:id])
    @reservation.update_attributes(reservation_params)
    @reservation.date_time = datetime(params[:res][:date], params[:res]["time(4i)"], params[:res]["time(5i)"])
    if @reservation.save
      flash[:success] = 'Reservation updated'
      redirect_to edit_user_user_reservation_path(params[:user_id], params[:id])
    else
      flash[:alert] = 'Please verify the information'
      redirect_to edit_user_user_reservation_path(params[:user_id], params[:id])
    end

  end

  def destroy
    @user = User.find(params[:user_id])
    @reservation = @user.reservations.find(params[:id])
    @reservation.destroy
    redirect_to user_user_reservations_path(params[:user_id])
  end

  private
  def reservation_params
    params.require("res").permit(:name, :email, :notes)
  end

end
