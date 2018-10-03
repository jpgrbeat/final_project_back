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
    @user_game = UserGame.find(params[:id])
    render json: @user_game.update(user_game_params)
  end
  private
  def user_game_params
    params.require(:user_game).permit(:id,:user_id,:game_id, :active)
  end
end
