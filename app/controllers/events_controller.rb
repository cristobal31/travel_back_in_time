class EventsController < ApplicationController

  def index
    @events = Event.all
  end
  
  def destroy
    @events = Events.find(params[:id])
    @restaurant.destroy
  end
end
