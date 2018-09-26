class UsersController < ApplicationController
  skip_before_action :authenticate, only: [:index,:create,:update]

  def index
    render json: User.all.to_json(only: [:name,:username,:email,:img,:description],
    include: [
      {invitee_friends:
        {
          only: [:invitee_id, :id],
          include: [invitee:{only: [:name,:username,:email,:img,:description]}]
        }
      },
      {invitor_friends:
        {
          only: [:invitor_id, :id],
          include: [invitor:{only: [:name,:username,:email,:img,:description]}]
        }
      }
      ])

  end

  def create
    render json: User.create(user_params)
  end

  def show
    render json: my_current_user.to_json(only: [:name, :username,:description,:img,:id])
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
