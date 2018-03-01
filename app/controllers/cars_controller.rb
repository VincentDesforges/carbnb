class CarsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    if params[:search].present?
       @cars = Car.search_by_make_model_location(params[:search])
    else
      @cars = Car.all
    end



    # def index # this will be needed if we have a map on the search page
    #   @flats = Flat.where.not(latitude: nil, longitude: nil)

    #   @markers = @flats.map do |flat|
    #     {
    #       lat: flat.latitude,
    #       lng: flat.longitude#,
    #       # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
    #     }
    #   end
    # end
  end

  def show
    @car = Car.find(params[:id])
    @markers = [{
        lat: @car.latitude,
        lng: @car.longitude,
        infoWindow: { content: render_to_string(partial: "/cars/map_box", locals: { car: @car }) }
      }]
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
    params.require(:car).permit(:make, :model, :year, :color, :mileage, :price_per_day, :location, :user_id, :photo)
  end
end


