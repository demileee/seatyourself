class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to new_sessions_path
    else
      flash[:alert] = "Sign up unsuccessful."
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)

    if @user
      redirect_to user_path(@user.id)
    else
      flash[:alert] = "Update unsuccessful."
      render :new
    end
  end

private
  def user_params
    params.require(:user).permit(:name, :email, :phone, :preference, :password, :password_confirmation)
  end

end
