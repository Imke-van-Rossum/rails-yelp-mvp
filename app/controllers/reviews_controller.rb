class ReviewsController < ApplicationController
  before_action :set_review, only: [:destroy]

  def new
    @review = Review.new
  end

  def create
    # get data from params
    # create a new object with data
    @review = Review.new(review_params)
    # save it
    @review.save
    # redirect to SHOW page
    redirect_to review_path(@review)
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
    @review = review.find(params[:id])
  end
end
