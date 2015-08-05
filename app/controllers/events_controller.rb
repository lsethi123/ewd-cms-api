class EventsController < ApplicationController

  def index
    @events = Event.all
    render json: @events
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      render status: 201, json: @event
    else
      render status: 404
    end
  end

  def show
    @event = Event.find(params[:id])
    render json: @event
  end

  def update
    @event = Event.find(params[:id]).update(event_params)
    render json: @event
  end

  def destroy
    @event = Event.destroy(params[:id])
    render json: @event
  end

  private

  def task_params
    params.require(:event).permit(:title, :starts_at, :ends_at)
  end
end
