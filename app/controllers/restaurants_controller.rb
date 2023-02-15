class RestaurantsController < ApplicationController

  # C
  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new, status: :unprocessable_entity
    end
  end

  # R all
  def index
    @restaurants = Restaurant.all
  end

  # R one
  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = @restaurant.reviews
  end
  # U
  # D

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
