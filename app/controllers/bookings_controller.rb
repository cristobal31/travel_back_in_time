class BookingsController < ApplicationController

  def index
    @bookings = Booking.where(user: current_user)
  end


  def new
    @booking = Booking.new
  end

  def create
    @event = Event.find(params[:event_id])
    @booking = Booking.new(booking_params)
    @booking.event = @event
    @booking.user = current_user
    if @booking.save
      redirect_to event_path(@event)
    else
      render 'events/show', status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :rich)
  end
end
