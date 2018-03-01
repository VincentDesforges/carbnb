class ReviewsController < ApplicationController

  def new
    @car = Car.find(params[:car_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    # we need `car_id` to asssociate review with corresponding car
    @review.car = Car.find(params[:car_id])
    @review.save
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
