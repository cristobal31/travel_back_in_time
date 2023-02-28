class EventsController < ApplicationController
  def destroy
    @events = Events.find(params[:id])
    @restaurant.destroy
  end
end
