class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
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


  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      raise
      redirect_to events_path(@event)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @event = Events.find(params[:id])
    @event.destroy
    redirect_to events_path, status: :see_other
  end

  private

  def event_params
    params.require(:event).permit(:name, :year, :category, :price, :era, :user_id)
  end
end
