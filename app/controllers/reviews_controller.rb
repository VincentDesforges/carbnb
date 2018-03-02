class ReviewsController < ApplicationController
  def new
    @car = Car.find(params[:car_id])
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    authorize @review
    # we need `car_id` to asssociate review with corresponding car
    @car = Car.find(params[:car_id])
    @review.car = @car

    if @review.save
      redirect_to car_path(@car)
    else
      render 'cars/show'
    end
  end

  def show
    @reviews = Review.select(params[:car_id])
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
