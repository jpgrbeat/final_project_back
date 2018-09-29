class UsersController < ApplicationController
  skip_before_action :authenticate, only: [:index,:create]

  def index
    render json: User.all
  end

  def create
    render json: User.create(user_params)
  end

  def show
    render json: my_current_user
  end

  def update
    my_current_user.update(user_params)
    if my_current_user.save
      render json: my_current_user, status: :accepted
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :username, :description, :email,:img,:password,:id)
  end
end
