class AuthController < ApplicationController
  # sessions - no longer what we want to use
  # what is a session?
      # session[:user_id] = user.id # something
      # redirect

  skip_before_action :authenticate, only: [:login]

  def login
    user = User.find_by(username: params[:username])

    if user && user.authenticate(params[:password])
      token = generate_token(user)
      render json: {token: token, user: user, user_games: user.games, invitee_friends: user.invitees, invitor_friends: user.invitors}, status: 200
    else
      render "Failed", status: 404
    end
  end

end
