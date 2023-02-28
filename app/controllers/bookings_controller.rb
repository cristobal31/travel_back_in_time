class BookingsController < ApplicationController
  # def destroy
  #   @bookings = Bookings.find(params[:id])
  #   @bookings.destroy
  def new
    @bookings = Booking.new
  end

  def create
    @event = Event.find(params[:event_id])
    @booking = bookings.new(booking_params)
    @booking.user = current_user

    if @booking.save
      redirect_to bookings_path
    else
      render 'new', status: :unprocessable_entity
    end
  end

  private

  def booking_params
    param.require(:booking).permit(submit)
  end
end
