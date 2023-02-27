class EventsController < ApplicationController
  # def index
  #   @events = Event.all
  # end

  def show
    @event = Event.find(params[:id])
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
      redirect_to events_path(@event)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @events = Events.find(params[:id])
    @restaurant.destroy
  end

  private

  def event_params
    params.require(:event).permit(:name, :year, :category, :price, :era, :user_id)
  end
end
