class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def show
  end

  def list
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    # get data from params
    # create a new object with data
    @restaurant = Restaurant.new(restaurant_params)
    # save it
    @restaurant.save
    # redirect to SHOW page
    redirect_to restaurant_path(@restaurant)
  end

  def edit
    # get the id from the params
    # find the restaurant with that id
  end

  def update
    # find restaurant by its id
    # update it with data from params
    # redirect to show page.
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  def destroy
    # find the restaurant with the given id
    # delete it!
    # redirect to index
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:content, :rating)
  end

  def set_restaurant
    @restaurant = restaurant.find(params[:id])
  end
end

end
