class EventsController < ApplicationController
  before_action :set_event
  def index
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(list_params)
    if @event.save
      redirect_to event_path(@event)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def list_params
    params.require(:event).permit(:name, :photo)
  end
end
