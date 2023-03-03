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
    if params[:query].present?
      sql_query = "name ILIKE :query OR category ILIKE :query OR era ILIKE :query"
      @events = Event.where(sql_query, query: "%#{params[:query]}%")
    else
      @events = Event.all
    end
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to events_path(@event)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @event = Events.find(params[:id])
    @event.destroy
  end

  private

  def event_params
    params.require(:event).permit(:name, :year, :category, :price, :era, :user_id)
  end
end
