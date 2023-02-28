class EventsController < ApplicationController

  # def index
  #   @events = Event.all
  # end

  def show
    @event = Event.find(params[:id])
    if @event.bookings.where(user: current_user).any?
      @booking = Booking.where(user: current_user).where(event: @event).last
      @booked = true
    else
      @booking = Booking.new
      @booked = false
    end
  end

  def index
    @events = Event.all
  end

  def destroy
    @event = Events.find(params[:id])
    @event.destroy
  end
end
