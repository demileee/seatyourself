class RestaurantsController < ApplicationController

  before_action :ensure_logged_in, except: [:index, :show]
  before_action :ensure_role, except: [:index, :show]
  before_action :ensure_ownership, only: [:edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end
  
  def show
    @restaurant = Restaurant.find(params[:id])
    @reservations = Reservation.where('restaurant_id=?', @restaurant)
  end

  def new
    @restaurant = Restaurant.new
  end
  def create

    @restaurant = Restaurant.new

    @restaurant.name = params[:restaurant][:name]
    @restaurant.address = params[:restaurant][:address]
    @restaurant.description = params[:restaurant][:description]
    @restaurant.phone = params[:restaurant][:phone]
    @restaurant.pic_url = params[:restaurant][:pic_url]
    @restaurant.user_id = current_user.id

    if @restaurant.save
      flash[:success] = 'Restaurant created'
      redirect_to restaurant_path(@restaurant.id)
    else
      flash[:alert] = 'Please verify the information'
      render :new
    end
  end


  def edit

  end

  def update

  end

  def destroy

  end


end
