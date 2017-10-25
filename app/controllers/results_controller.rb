class ResultsController < ApplicationController

  def index
    @restaurants = Restaurant.where("(name LIKE ?) OR (address LIKE ?) OR (description LIKE ?)", "%#{params[:search][:input]}%", "%#{params[:search][:input]}%", "%#{params[:search][:input]}%")
  end

end
