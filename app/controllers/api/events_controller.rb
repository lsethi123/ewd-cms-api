class Api::EventsController < ApplicationController

  def index
    if params[:user_id]
      @events = Event.where(user_id: params[:user_id])
    else
      @events = Event.all
    end
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

  def event_params
    params.require(:event).permit(:title, :date, :starts_at, :ends_at, :user_id)
  end
end
