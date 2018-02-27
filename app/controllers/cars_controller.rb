class CarsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
    punit_car
  end

  def create
    @car = Car.new(car_params)
    @car.user = current_user
    punit_car
    if @car.save
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def edit
    @car = Car.find(params[:id])
    punit_car
  end

  def update
    @car = Car.find(params[:id])
    punit_car
    if @car.update(car_params)
      redirect_to car_path(@car)
    else
      render :edit
    end
  end

  def destroy
    @car = Car.find(params[:id])
    punit_car
    @car.destroy
    redirect_to cars_path
  end

  private

  def punit_car
    authorize @car
  end

  def car_params
    params.require(:car).permit(:make, :model, :year, :color, :mileage, :price_per_day, :location, :user_id)
  end
end


