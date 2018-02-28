class BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking).order(created_at: :desc)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
    pundit_booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    pundit_booking
    if @booking.save
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
    pundit_booking
  end

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
    pundit_booking
    @booking.destroy
    redirect_to bookings_path
  end

   private

  def pundit_booking
    authorize @booking
  end

  def booking_params
    params.require(:car).permit(:start_date, :end_date, :total_price)
  end
end
