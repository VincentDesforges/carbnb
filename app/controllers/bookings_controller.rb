class BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking).order(created_at: :desc)
  end

  def show
    @booking = Booking.find(params[:id])
    pundit_booking
  end

  def new
    @booking = Booking.new
    @car = Car.find(params[:car_id])
    @booking.car = @car
    pundit_booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @car = Car.find(params[:car_id])
    @booking.car = @car
    pundit_booking
    @booking.total_price = @car.price_per_day * (@booking.end_date - @booking.start_date)
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  # def edit
  #   @booking = Booking.find(params[:id])
  #   pundit_booking
  # end

  def update
    @booking = Booking.find(params[:id])
    pundit_booking
    if @booking.update(booking_params)
      redirect_to booking_path(@booking)
    else
      render :edit
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @user = @booking.user
    pundit_booking
    @booking.destroy
    redirect_to user_path(@user)
  end

   private

  def pundit_booking
    authorize @booking
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_price, :car_id, :user_id)
  end
end
