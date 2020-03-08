class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user

    @flat = Flat.find(params[:flat_id])
    @booking.flat = @flat

    if @booking.end_date && @booking.start_date
      total_price = ((@booking.end_date - @booking.start_date).to_i + 1) * @booking.flat.price_day
      @booking.total_price = total_price
      @booking.user = current_user
      @booking.status = Status.first # default value = pending
    else
      @booking.total_price = 0
    end

    if @booking.save
      redirect_to dashboard_path
    else
      flash[:alert] = "Something went wrong."
      render 'flats/show'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_price)
  end
end
