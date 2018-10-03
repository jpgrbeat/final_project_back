class EventsController < ApplicationController
  skip_before_action :authenticate, only: [:index,:create]
  def index
    render json: Event.all
  end

  def create
    render json: Event.create(event_params)
  end

  def update
      @event = Event.find(event_params.id)
      @event.update
      @event.save
      render json: @event, status: :accepted
  end

  def show
    @event = Event.find(params[:id])
    render json: @event
  end

  def destroy
    @event = Event.find(event_params.id)
    render json: @event.destroy
  end

  private
  def event_params
    params.require(:event).permit(:id, :title,:description,:address,:date, :player_count, :time_start, :time_end)
  end
end
