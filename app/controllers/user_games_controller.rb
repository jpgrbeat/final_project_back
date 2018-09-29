class UserGamesController < ApplicationController
  skip_before_action :authenticate, only: [:index]
  def index
    render json: UserGame.all
  end

  def create
    # byebug
    render json: UserGame.create(user_game_params)
  end
  def update
    render json: UserGame.update(params)
  end
  private
  def user_game_params
    params.require(:user_game).permit(:user_id,:game_id)
  end
end
