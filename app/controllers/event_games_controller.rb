class EventGamesController < ApplicationController
  skip_before_action :authenticate, only: [:index,:create]

  def index
    render json: EventGame.all
  end

  def create
    render json: EventGame.create(event_game_params)
  end

  def update

    @event_game = EventGame.find(id)
    @event_game.update
    @event_game.save
  end


  private
  def event_game_params
    params.require(:event_game).permit(:id,:event_id, :game_id, :game_votes)
  end
end
