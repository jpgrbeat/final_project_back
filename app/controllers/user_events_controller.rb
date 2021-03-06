class UserEventsController < ApplicationController
  skip_before_action :authenticate, only: [:index]

  def index
    render json: UserEvent.all
  end

  def create
    render json: UserEvent.create(user_event_params)
  end

  def destroy
    @user_event = UserEvent.find(params[:id])
    render json: @user_event.destroy()
  end

  private
  def user_event_params
    params.require(:user_event).permit(:user_id,:event_id)
  end
end
