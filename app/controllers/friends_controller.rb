class FriendsController < ApplicationController
  skip_before_action :authenticate, only: [:index]
  def index
    render json: Friend.all
  end

  def create
    render json: Friend.create(friend_params)
  end

  def destroy
    @friend = Friend.find(params[:id])
    render json: @friend.destroy
  end

  private
  def friend_params
    params.require(:friend).permit(:id,:invitor_id, :invitee_id)
  end
end
