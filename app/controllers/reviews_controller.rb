class ReviewsController < ApplicationController
  before_action :set_review, only: [:destroy]

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    # get data from params
    # create a new object with data
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    # save it
    @review.restaurant = @restaurant
    if @review.valid?
      @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def destroy
    # find the restaurant with the given id
    # delete it!
    # redirect to index
    @review.destroy
    redirect_to reviews_path
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_review
    @review = Review.find(params[:id])
  end
end
